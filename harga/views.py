from django.contrib.auth.models import Group
from django.core.files.base import ContentFile
from django.shortcuts import render,redirect
from .models import Harga
from .form import FormHarga
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth.models import Group

def CekGrub(user):
    grub = Group.objects.get(name='kementrian')
    usergrub = user.groups.all()

    status = grub in usergrub
    return status



# Create your views here.
def indexharga(request):
    datahargaDaerah = Harga.objects.all()
    print(datahargaDaerah)
    context={
        'judul':'Harga',
        'isi':'harga',
        'datahargadaerah':datahargaDaerah
    }
    return render(request,'harga.html',context)


#FITUR SPESIAL
@user_passes_test(CekGrub)
def inputHarga(request):
    dataharga = FormHarga(request.POST or None)
    if request.method == "POST":
        if dataharga.is_valid():
            dataharga.save()
            
            return redirect('harga:hargaedit')

    context={
        'judul':'Input Harga',
        'post_formHarga':dataharga
    }

    return render(request,'inputharga.html',context)
@user_passes_test(CekGrub)
def hapus(request,delid):
    Harga.objects.filter(id=delid).delete()
    return redirect('harga:hargaedit')
@user_passes_test(CekGrub)
def edit(request,upid):
    update = Harga.objects.get(id=upid)
    data= {
            'daerah':update.daerah,
            'hargaSwab':update.hargaSwab,
            'hargaRapid':update.hargaRapid,
    }
    dataform = FormHarga(request.POST or None,initial=data,instance=update)
    if request.method == "POST":
        if dataform.is_valid():
            dataform.save()
            
            return redirect('harga:indexharga')

    context={
        'judul':'Input Harga',
        'post_formHarga':dataform
    }

    return render(request,'inputharga.html',context)
@user_passes_test(CekGrub)
def editharga(request):
    editdataharga = Harga.objects.all()
    context = {
        'judul':'Edit Harga',
        'editharga':editdataharga
    }
    return render(request,'editharga.html',context)


