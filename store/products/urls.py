from django.urls import re_path, path
from . import views

app_name = 'products'
urlpatterns = [
    re_path(r'^$', views.index, name='index'),
    re_path(r'^add', views.add, name='add'),
    re_path(r'^update/(\d+)', views.update, name='update')
]
