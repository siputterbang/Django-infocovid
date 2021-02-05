from django.http import request
from django.shortcuts import render,redirect
from .models import DataPasien
from .forms import FormDataPasien
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth.models import Group

def CekGrub(user):
    grub = Group.objects.get(name='kementrian')
    usergrub = user.groups.all()

    status = grub in usergrub
    return status

# Create your views here.
def indexmap(request,kab="Yogyakarta"):
    dataPasien = DataPasien.objects.all()
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
    waktu = ''
    print(dataPasien)
    for i in dataPasien:
        print(i.id)
        identiti.append(i.id)
        print(identiti,len(identiti),identiti[-1])

        
        if i.daerah == str(kab):
            jml_positif += i.P_Positif
            jml_sembuh += i.P_Sembuh
            jml_meninggal += i.P_Meninggal
            print("ini jml pos",jml_positif,jml_meninggal,jml_sembuh)
            jml = jml_positif+jml_meninggal+jml_sembuh
            Daerah = i.daerah
            Positif = int(i.P_Positif)
            Sembuh = int(i.P_Sembuh)
            Meninggal = int(i.P_Meninggal)
            waktu = str(i.datawaktu)
            print('ini waktuuuuuu',waktu)
            print(Daerah,Positif,Sembuh,Meninggal)
        
            print('ini kabbbbbbb',kab)
            persenPositif = (jml_positif/jml)*100
            persenSembuh= (jml_sembuh/jml)*100
            persenMeninggal = (jml_meninggal/jml)*100
            print("INI PERSEN YOGYAJAJARYA",persenPositif,persenMeninggal,persenSembuh)
            
    context={
        'judul':'Map',
        'isi':'ini map',
        'Daerah':Daerah,
        'DataPositif':persenPositif,
        'DataSembuh':persenSembuh,
        'DataMeninggal':persenMeninggal,
        'Positif':Positif,
        'Sembuh':Sembuh,
        'Meninggal':Meninggal,
        'waktu':waktu
    }
    return render(request,'map.html',context)


@user_passes_test(CekGrub)
def inputMap(request):
    datamap = FormDataPasien(request.POST or None)
    if request.method == "POST":
        if datamap.is_valid():
            datamap.save()
            
            return redirect('map:indexmap')

    context={
        'judul':'Input Map',
        'post_formMap':datamap
    }

    return render(request,'inputmap.html',context)

@user_passes_test(CekGrub)
def editList(request):
    editDataPasien = DataPasien.objects.all()
    context = {
        'judul':'Edit Data',
        'editpasien':editDataPasien
    }
    return render(request,'editmap.html',context)

@user_passes_test(CekGrub)
def hapus(request,delid):
    DataPasien.objects.filter(id=delid).delete()
    return redirect('map:listmap')


@user_passes_test(CekGrub)
def edit(request,upid):
    update = DataPasien.objects.get(id=upid)
    data= {
            'daerah':update.daerah,
            'P_Positif':update.P_Positif,
            'P_Meninggal':update.P_Meninggal,
            'P_Sembuh':update.P_Sembuh,
    }
    datalist = FormDataPasien(request.POST or None,initial=data,instance=update)
    if request.method == "POST":
        if datalist.is_valid():
            datalist.save()
            
            return redirect('map:listmap')

    context={
        'judul':'Input Data',
        'post_formMap':datalist
    }

    return render(request,'inputmap.html',context)

