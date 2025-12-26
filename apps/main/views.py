from django.shortcuts import render
import web.settings as sett
from django.utils import timezone

# Create your views here.




def media_admin(request):
    context = {
        'media_url':sett.MEDIA_URL
    }

    return context

def main(request):

    return render(request,'main_app/main.html')



from .models import Content

def section1_view(request):
    contents = Content.objects.filter(is_active=True).order_by('-created_at')
    return render(request, 'main_app/section1.html', {'contents': contents})





from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.views.decorators.http import require_POST
from .forms import ConsultationForm

@csrf_exempt
@require_POST
def consultation_submit(request):
    form = ConsultationForm(request.POST)
    if form.is_valid():
        consultation = form.save()
        return JsonResponse({
            'status': 'success',
            'message': '✅ شماره شما با موفقیت ثبت شد. به زودی با شما تماس می‌گیریم.'
        })
    else:
        return JsonResponse({
            'status': 'error',
            'message': '❌ ' + form.errors['mobile'][0]
        }, status=400)



def about_us(request):

    return render(request,'main_app/about.html')




def call(request):

    return render(request,'main_app/call.html')