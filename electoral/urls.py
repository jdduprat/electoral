"""electoral URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
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
from django.urls import path, re_path, include
from apps.voto.views import votesList, updateVote
from django.contrib.auth import views as auth_views

urlpatterns = [    
    re_path(r'^jet/', include('jet.urls', 'jet')),  # Django JET URLS
    re_path(r'^jet/dashboard/', include('jet.dashboard.urls', 'jet-dashboard')),  # Django JET dashboard URLS
    path('admin/', admin.site.urls),
    path('cuentas/', include('django.contrib.auth.urls')),
    re_path('login/', auth_views.LoginView.as_view(), {'template_name': "login.html"},name='login'),
    re_path('logout/', auth_views.logout_then_login, name='logout'),
    
    re_path(r'^carga/$', view=votesList, name='carga'),
    re_path(r'^update_vote/$', view=updateVote, name='update_vote'),
]
