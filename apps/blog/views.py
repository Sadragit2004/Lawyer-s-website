from django.shortcuts import get_object_or_404, render
from django.views.generic import ListView, DetailView
from django.utils import timezone
from django.db.models import Q
from django.http import Http404
from .models import BlogPost, Category, Tag, Author
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
import jdatetime

class BlogMainView(ListView):
    """صفحه اصلی مقالات"""
    template_name = 'blog_app/mainBlog.html'
    context_object_name = 'top_blogs'

    def get_queryset(self):
        return BlogPost.objects.filter(
            status='published'
        ).filter(
            Q(publish_at__lte=timezone.now()) | Q(publish_at__isnull=True)
        ).order_by('-views')[:5]

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['featured_posts'] = BlogPost.objects.filter(
            status='published',
            is_featured=True
        ).filter(
            Q(publish_at__lte=timezone.now()) | Q(publish_at__isnull=True)
        )[:4]
        return context

class BlogListView(ListView):
    model = BlogPost
    template_name = 'blog_app/blog_list.html'
    paginate_by = 6
    context_object_name = 'posts'

    def get_queryset(self):
        queryset = BlogPost.objects.filter(
            status='published'
        ).filter(
            Q(publish_at__lte=timezone.now()) | Q(publish_at__isnull=True)
        ).select_related('author', 'category').prefetch_related('tags')

        # فیلتر بر اساس دسته‌بندی
        category_slug = self.kwargs.get('category_slug')
        if category_slug:
            queryset = queryset.filter(category__slug=category_slug)

        # فیلتر بر اساس تگ
        tag_slug = self.kwargs.get('tag_slug')
        if tag_slug:
            queryset = queryset.filter(tags__slug=tag_slug)

        # جستجو
        search_query = self.request.GET.get('q')
        if search_query:
            queryset = queryset.filter(
                Q(title__icontains=search_query) |
                Q(content__icontains=search_query) |
                Q(excerpt__icontains=search_query) |
                Q(tags__name__icontains=search_query)
            ).distinct()

        return queryset.order_by('-publish_at', '-created_at')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        # دسته‌بندی‌ها
        context['categories'] = Category.objects.all()

        # مقالات پربازدید
        context['popular_posts'] = BlogPost.objects.filter(
            status='published'
        ).filter(
            Q(publish_at__lte=timezone.now()) | Q(publish_at__isnull=True)
        ).order_by('-views')[:5]

        # تگ‌ها
        context['tags'] = Tag.objects.all()[:20]

        # دسته‌بندی فعال
        category_slug = self.kwargs.get('category_slug')
        if category_slug:
            context['active_category'] = Category.objects.get(slug=category_slug)

        return context

class BlogDetailView(DetailView):
    model = BlogPost
    template_name = 'blog_app/detail.html'
    context_object_name = 'post'
    slug_field = 'slug'
    slug_url_kwarg = 'slug'

    def get_queryset(self):
        return BlogPost.objects.filter(
            status='published'
        ).filter(
            Q(publish_at__lte=timezone.now()) | Q(publish_at__isnull=True)
        ).select_related('author', 'category', 'meta_tags').prefetch_related('tags')

    def get(self, request, *args, **kwargs):
        response = super().get(request, *args, **kwargs)
        if not self.object:
            raise Http404("مقاله یافت نشد")

        # افزایش تعداد بازدید
        self.object.increment_views()

        return response

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        post = self.object

        # تبدیل تاریخ به شمسی
        try:
            gregorian_date = post.publish_at or post.created_at
            jalali_date = jdatetime.date.fromgregorian(date=gregorian_date)
            context['jalali_date'] = jalali_date
            context['jalali_day'] = jalali_date.day
            context['jalali_month'] = jalali_date.j_months_fa[jalali_date.month - 1]
            context['jalali_year'] = jalali_date.year
        except:
            context['jalali_date'] = None

        # مقالات مرتبط
        related_posts = BlogPost.objects.filter(
            status='published'
        ).exclude(id=post.id)

        # ابتدا بر اساس تگ‌های مشترک
        if post.tags.exists():
            related_posts = related_posts.filter(tags__in=post.tags.all()).distinct()

        # اگر نتیجه نداشت، بر اساس دسته‌بندی
        if not related_posts.exists() and post.category:
            related_posts = BlogPost.objects.filter(
                status='published',
                category=post.category
            ).exclude(id=post.id)

        # اگر باز هم نتیجه نداشت، جدیدترین مقالات
        if not related_posts.exists():
            related_posts = BlogPost.objects.filter(
                status='published'
            ).exclude(id=post.id).order_by('-created_at')

        context['related_posts'] = related_posts[:4]

        # دسته‌بندی‌ها برای سایدبار
        context['categories'] = Category.objects.all()

        # مقالات پربازدید برای سایدبار
        context['popular_sidebar_posts'] = BlogPost.objects.filter(
            status='published'
        ).filter(
            Q(publish_at__lte=timezone.now()) | Q(publish_at__isnull=True)
        ).order_by('-views')[:3]

        # تگ‌ها برای سایدبار
        context['tags'] = Tag.objects.all()[:10]

        # متا تگ‌ها
        meta_tags = post.get_meta_tags()
        request = self.request

        # پر کردن URL‌های کامل
        if not meta_tags.get('og_url'):
            meta_tags['og_url'] = request.build_absolute_uri(post.get_absolute_url())

        if not meta_tags.get('canonical_url'):
            meta_tags['canonical_url'] = request.build_absolute_uri(post.get_absolute_url())

        # تصاویر
        if not meta_tags.get('og_image') and post.cover_image:
            meta_tags['og_image'] = request.build_absolute_uri(post.cover_image.url)

        if not meta_tags.get('twitter_image') and meta_tags.get('og_image'):
            meta_tags['twitter_image'] = meta_tags['og_image']

        context['meta_tags'] = meta_tags

        return context