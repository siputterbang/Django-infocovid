"""infocovid URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
from . import views as VIndex
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',VIndex.index,name='index'),
    path('coba/',VIndex.coba),
    path('map/',include(('map.urls','map'),namespace='indexmap')),
    path('harga/',include(('harga.urls','harga'),namespace='indexharga')),
    path('info/',include(('info.urls','info'),namespace='indexinfo')),
    path('login/',include(('login.urls','login'),namespace='indexlogin')),
    path('karantina/',include(('karantina.urls','karantina'),namespace='indexkarantina'))
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)