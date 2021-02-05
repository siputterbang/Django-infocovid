from django import forms
from django.db.models import fields
from django.forms import widgets
from .models import *

class FormBerita(forms.ModelForm):
    class Meta:
        model = Berita
        fields= [
            'judul',
            'isi',
            'FotoJudul'
            
        ]
        widgets = {
            'judul':forms.TextInput(attrs={'class':'form-control','placeholder':'Judul','name':'judul'}),
            'isi':forms.Textarea(attrs={'class':'form-control','id':'exampleFormControlTextarea1','rows':'3','placeholder':'isi'}),

        }
