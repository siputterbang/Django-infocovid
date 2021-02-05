from django.urls import path
from . import views as Vlogin

urlpatterns = [
    path('admin/',Vlogin.halamanadmin,name='admin'),
    path('',Vlogin.loginpage,name='indexlogin'),
    path('logout/',Vlogin.logoutpage,name='logout'),
    
]
