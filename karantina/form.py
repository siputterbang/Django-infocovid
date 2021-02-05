from django import forms
from django.db.models import fields
from django.forms import widgets
from .models import *

class FormDataKarantina(forms.ModelForm):
    class Meta:
        model = RujukanKarantina
        fields= [
            'Kabupaten',
            'kecamatan',
            'namaRS',
            'namaTempatKarantina'
            
        ]
        widgets = {
            'Kabupaten':forms.TextInput(attrs={'class':'form-control','placeholder':'Kab'}),
            'kecamatan':forms.TextInput(attrs={'class':'form-control','placeholder':'Kec'}),
            'namaRS':forms.TextInput(attrs={'class':'form-control','placeholder':'Rumah Sakit'}),
            'namaTempatKarantina':forms.TextInput(attrs={'class':'form-control','placeholder':'Nama Lokasi karantia'}),

        }
