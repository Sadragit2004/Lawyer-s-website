from django.db import models

class Content(models.Model):
    title = models.CharField(max_length=200, verbose_name="عنوان")
    image = models.ImageField(upload_to='images/', verbose_name="عکس")
    description = models.TextField(verbose_name="توضیحات")
    is_active = models.BooleanField(default=True, verbose_name="فعال")

    created_at = models.DateTimeField(auto_now_add=True, verbose_name="تاریخ ایجاد")
    updated_at = models.DateTimeField(auto_now=True, verbose_name="تاریخ بروزرسانی")

    class Meta:
        verbose_name = "محتوا"
        verbose_name_plural = "محتواها"
        ordering = ['-created_at']

    def __str__(self):
        return self.title




class Consultation(models.Model):
    mobile = models.CharField(max_length=11, verbose_name="شماره موبایل")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="تاریخ ثبت")

    class Meta:
        verbose_name = "مشاوره"
        verbose_name_plural = "مشاوره‌ها"
        ordering = ['-created_at']

    def __str__(self):
        return self.mobile