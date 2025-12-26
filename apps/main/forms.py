from django import forms
from .models import Consultation

class ConsultationForm(forms.ModelForm):
    class Meta:
        model = Consultation
        fields = ['mobile']
        widgets = {
            'mobile': forms.TextInput(attrs={
                'class': 'form-control form-solid text-left',
                'placeholder': 'شماره موبایل',
                'type': 'tel',
                'pattern': '[0-9]{11}',
                'title': 'لطفا شماره موبایل 11 رقمی وارد کنید'
            })
        }

    def clean_mobile(self):
        mobile = self.cleaned_data['mobile']
        if not mobile.isdigit():
            raise forms.ValidationError("شماره موبایل باید فقط شامل اعداد باشد")
        if len(mobile) != 11:
            raise forms.ValidationError("شماره موبایل باید 11 رقمی باشد")
        return mobile