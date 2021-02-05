from django.http import request
from django.shortcuts import render
from map.models import DataPasien
from info.models import Berita
def index(request):
    dataPasien = DataPasien.objects.all()
    data = Berita.objects.all()
    identiti = []
    Daerah=''
    Positif =0
    Sembuh =0
    Meninggal =0
    jml_positif =0
    jml_sembuh =0
    jml_meninggal = 0
    persenPositif =0
    persenSembuh =0
    persenMeninggal =0
    print(dataPasien)
    for i in dataPasien:
        print(i.id)
        identiti.append(i.id)
        print(identiti,len(identiti),identiti[-1])
        jml_positif += i.P_Positif
        jml_sembuh += i.P_Sembuh
        jml_meninggal += i.P_Meninggal
        print("ini jml pos",jml_positif,jml_meninggal,jml_sembuh)
        jml = jml_positif+jml_meninggal+jml_sembuh
        
        if i.id == identiti[-1]:
            Daerah = i.daerah
            Positif = int(i.P_Positif)
            Sembuh = int(i.P_Sembuh)
            Meninggal = int(i.P_Meninggal)
            print(Daerah,Positif,Sembuh,Meninggal)
        
        persenPositif = (jml_positif/jml)*100
        persenSembuh= (jml_sembuh/jml)*100
        persenMeninggal = (jml_meninggal/jml)*100
        print("INI PERSEN",persenPositif,persenMeninggal,persenSembuh)
    context={
        'judul':'map',
        'isi':'ini map',
        'DataPositif':persenPositif,
        'DataSembuh':persenSembuh,
        'DataMeninggal':persenMeninggal,
        'data':data
    }
    return render(request,'index.html',context)
def coba(request):
    context={

    }
    return render(request,'blueprin.html')