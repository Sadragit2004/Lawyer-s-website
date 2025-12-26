from django.urls import path
from . import views

app_name = 'blog'

urlpatterns = [
      path('mainblog', views.BlogMainView.as_view(), name='main'),
    path('list', views.BlogListView.as_view(), name='list'),
    path('category/<slug:category_slug>/', views.BlogListView.as_view(), name='category'),
    path('tag/<slug:tag_slug>/', views.BlogListView.as_view(), name='tag'),
    path('<slug:slug>/', views.BlogDetailView.as_view(), name='detail'),
]
