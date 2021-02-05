from django import forms
from django.db.models import fields
from django.forms import widgets
from .models import Harga

class FormHarga(forms.ModelForm):
    class Meta:
        model = Harga
        fields= [
            'daerah',
            'hargaSwab',
            'hargaRapid'
        ]
        widgets = {
            'daerah':forms.TextInput(attrs={'class':'form-control','placeholder':'Judul'}),
            'hargaSwab':forms.TextInput(attrs={'class':'form-control','id':'exampleFormControlTextarea1','rows':'3','placeholder':'isi'}),
            'hargaRapid':forms.TextInput(attrs={'class':'form-control','id':'exampleFormControlTextarea1','rows':'3','placeholder':'isi'}),
        }