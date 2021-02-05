from django import urls
from django.conf.urls import url
from django.shortcuts import render,redirect
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import Group

# Create your views here.

def halamanadmin(request):
    template_name = None
    if request.user.is_authenticated:
        template_name='halamanadmin.html'
    else:
        template_name = 'login.html'
    
    return render(request,template_name)

def loginpage(request):

    if request.method == "GET":
        if request.user.is_authenticated:
            return redirect('/login/admin')
        else:
            return render(request,'login.html')

    if request.method == "POST":
        print(request.POST)
        username_login = request.POST['username']
        password_login = request.POST['password']
        user = authenticate(username=username_login,password=password_login)
        
        if user is not None:
            login(request,user)
            return redirect('/login/admin')
        else:
            return redirect('/login/')

    
@login_required
def logoutpage(request):
    logout(request)
    return redirect('/login/')


