
from django.urls import path
from . import views

app_name = 'main'

urlpatterns = [
    path('',views.main,name='index'),
      path('section1/', views.section1_view, name='section1'),
      path('about/', views.about_us, name='about'),
      path('consultation/submit/', views.consultation_submit, name='consultation_submit'),
      path('call/', views.call, name='call'),

]
