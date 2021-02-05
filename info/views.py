import os
from typing import Counter
from django.shortcuts import render,redirect
from django.core.files.storage import FileSystemStorage,default_storage
from .models import *
from .form import *
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth.models import Group
# Create your views here.
#index
def indexinfo(request):
    data = Berita.objects.all()
    print(data)
    context={
        'judul':'judul',
        'isi':'info',
        'data':data
    }
    return render(request,'info.html',context)
def CekGrub(user):
    grub = Group.objects.get(name='kementrian')
    usergrub = user.groups.all()
    print('ini' ,usergrub)

    status = grub in usergrub
    return status




    
#Buat Berits
#Buat Berits
@user_passes_test(CekGrub)
def BuatBerita(request):
    post_from = FormBerita(request.POST or None,request.FILES)
   
    if request.method == "POST":
        if post_from.is_valid():
            post_from.save()
            return redirect('info:indexinfo')
        

    context={
        'judul':'Input Berita',
        'post_form':post_from,
    }
    return render(request,'inputberita.html',context)

#tampilkan berita saat diklik dari index info
def tampilkanberita(request,parsingurl):
    data = Berita.objects.all()
    print(data)
    nilai = int(parsingurl)
    context={
        'judul':'judul',
        'isi':'info',
        'data':data,
        'nilai':parsingurl,
        'dataid': nilai
    }
    return render(request,'tampilkanberita.html',context)

def infonomordarurat(request):
    return render(request,'infonomordarurat.html')
#hapus berita
@user_passes_test(CekGrub)
def hapus(request,delid):
    data = Berita.objects.all()
    for info in data:
        print(info.id)
        if int(info.id) == int(delid):
            default_storage.delete(str(info.FotoJudul))
            Berita.objects.filter(id=delid).delete()
    return redirect('info:edit')
#edit berita CRUD
@user_passes_test(CekGrub)
def editberita(request):
    data = Berita.objects.all()
    context={
        'judul':'Edit Berita',
        'databerita':data
    }
    return render(request,'editberita.html',context)

#edit berita 
@user_passes_test(CekGrub)
def edit(request,upid):
    update = Berita.objects.get(id=upid)
    data= {
            'judul':update.judul,
            'isi':update.isi,
            'FotoJudul':update.FotoJudul,
            
            
    }
    dataform = FormBerita(request.POST or None,initial=data,instance=update)
    if request.method == "POST":
        if len(request.FILES["FotoJudul"]) != 0:
            post_from = FormBerita(request.POST or None,request.FILES)
            print("woiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii")
            if request.method == "POST":
                if post_from.is_valid():
                    hapus(request,upid)
                    post_from.save()
                    return redirect('info:edit')
        else:
            hapus(request,upid)
            print("INI FOTO JUDUDUDUUDUD",len(request.FILES["FotoJudul"]))
            dataform.save()
            return redirect('info:edit')

    context={
        'judul':'Input Berita',
        'post_form':dataform
    }
    return render(request,'inputberita.html',context)
