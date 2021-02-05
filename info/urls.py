from harga.views import edit
from django.urls import path
from . import views as Vinfo

urlpatterns = [
    path('',Vinfo.indexinfo,name="indexinfo"),
    path('inputberita/',Vinfo.BuatBerita,name="buatberita"),
    path('tampilberita/<parsingurl>',Vinfo.tampilkanberita,name='tampilberita'),
    path('darurat/',Vinfo.infonomordarurat,name='darurat1'),
    path('editberita/',Vinfo.editberita,name='edit'),
    path('hapus/<delid>',Vinfo.hapus,name='hapus'),
    path('edit/<upid>',Vinfo.edit,name='beritaedit'),
]
