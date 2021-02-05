from .views import *
from django.urls import path


urlpatterns = [
    path('',karantina,name="indexkarantina"),
    path('inputkarantina/',InputDataKarantina,name="inputkarantina"),
    path('listedit/',listedit,name='listdatakarantina'),
    path('hapus/<delid>',hapus,name='hapus'),
    path('edit/<upid>',edit,name='edit'),

]
