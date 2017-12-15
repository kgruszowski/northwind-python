from django.urls import re_path, path
from . import views

app_name = 'admin'
urlpatterns = [
    re_path(r'^$', views.index, name='admin_index'),
    re_path(r'^product/list', views.product_list, name='product_list'),
    re_path(r'^product/add', views.product_add, name='product_add'),
    re_path(r'^product/update/(\d+)', views.product_update, name='product_update')
]
