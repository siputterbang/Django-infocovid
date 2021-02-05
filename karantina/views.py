from django.http import request
from django.shortcuts import render,redirect
from .form import *
from .models import *
from django.contrib.auth.models import Group
from django.contrib.auth.decorators import user_passes_test

def CekGrub(user):
    grub = Group.objects.get(name='kementrian')
    usergrub = user.groups.all()

    status = grub in usergrub
    return status
# Create your views here.

def karantina(request):
    data = RujukanKarantina.objects.all()
    print(data)
    context={
        'judul':'Karantina',
        'isi':'Karantina',
        'data':data,
        'gunkid':'Gunungkidul',
        'sleman':'Sleman',
        'jogja':'Yogyakarta',
        'bantul':'bantul',
        'kulonprog':'Kulonprogo'

    }
    return render(request,'karantina.html',context)
@user_passes_test(CekGrub)
def InputDataKarantina(request):
    datalokasi = FormDataKarantina(request.POST or None)
    if request.method == "POST":
        if datalokasi.is_valid():
            datalokasi.save()
            
            return redirect('karantina:listdatakarantina')

    context={
        'judul':'Input Lokasi',
        'post_formdatakarantina':datalokasi
    }

    return render(request,'inputdatakarantina.html',context)
@user_passes_test(CekGrub)
def edit(request,upid):
    update = RujukanKarantina.objects.get(id=upid)
    data= {
            'Kabupaten':update.Kabupaten,
            'kecamatan':update.kecamatan,
            'namaRS':update.namaRS,
            'namaTempatKarantina':update.namaTempatKarantina,
    }
    dataform = FormDataKarantina(request.POST or None,initial=data,instance=update)
    if request.method == "POST":
        if dataform.is_valid():
            dataform.save()
            
            return redirect('karantina:listdatakarantina')

    context={
        'judul':'Edit Data Karantina',
        'post_formdatakarantina':dataform
    }

    return render(request,'inputdatakarantina.html',context)
@user_passes_test(CekGrub)
def listedit(request):
    editlist = RujukanKarantina.objects.all()
    context = {
        'judul':'Edit Info Karantina',
        'edit':editlist
    }
    return render(request,'editdatakarantina.html',context)

@user_passes_test(CekGrub)
def hapus(request,delid):
    RujukanKarantina.objects.filter(id=delid).delete()
    return redirect('karantina:listdatakarantina')