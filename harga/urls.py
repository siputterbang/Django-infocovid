from django.urls import path
from . import views as VHarga

urlpatterns = [
    path('',VHarga.indexharga,name="indexharga"),
    path('inputharga/',VHarga.inputHarga,name='inputharga'),
    path('editharga/',VHarga.editharga,name='hargaedit'),
    path('hapus/<delid>',VHarga.hapus,name='hapus'),
    path('edit/<upid>',VHarga.edit,name='edit'),
]
