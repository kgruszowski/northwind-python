from django.urls import re_path, path
from . import views

app_name = 'products'
urlpatterns = [
    re_path(r'^list$', views.listAll, name='list-all'),
    re_path(r'^list2$', views.listAll2, name='list-all2'),
    re_path(r'^list3$', views.listAll3, name='list-all3'),
    re_path(r'^add$', views.add, name='add'),
    re_path(r'^update/(\d+)$', views.update, name='update')
]
