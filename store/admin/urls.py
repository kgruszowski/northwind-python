from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='admin_index'),
    url(r'^product/list', views.product_list, name='product_list'),
    url(r'^product/add', views.product_add, name='product_add'),
    url(r'^product/update/(\d+)', views.product_update, name='product_update')
]