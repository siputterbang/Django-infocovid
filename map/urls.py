from harga.views import hapus
from django.urls import path
from . import views as VMap

urlpatterns = [
    path('',VMap.indexmap,name="indexmap"),
    path('inputmap/',VMap.inputMap,name="inputMap"),
    path('listmap/',VMap.editList,name="listmap"),
    path('hapus/<delid>',VMap.hapus,name='hapus'),
    path('edit/<upid>',VMap.edit,name='edit'),
    path('kab/<kab>',VMap.indexmap,name='kab')

]
