from django import forms
from django.db.models import fields
from django.forms import widgets
from .models import DataPasien

class FormDataPasien(forms.ModelForm):
    class Meta:
        model = DataPasien
        fields= [
            'daerah',
            'P_Positif',
            'P_Meninggal',
            'P_Sembuh',
            
            
        ]
        widgets = {
            'daerah':forms.TextInput(attrs={'class':'form-control','placeholder':'Judul'}),
            'P_Positif':forms.TextInput(attrs={'class':'form-control','id':'exampleFormControlTextarea1','rows':'3','placeholder':'isi'}),
            'P_Meninggal':forms.TextInput(attrs={'class':'form-control','id':'exampleFormControlTextarea1','rows':'3','placeholder':'isi'}),
            'P_Sembuh':forms.TextInput(attrs={'class':'form-control','id':'exampleFormControlTextarea1','rows':'3','placeholder':'isi'}),

        }