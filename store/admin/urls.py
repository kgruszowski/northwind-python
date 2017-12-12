from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index),
    url(r'^products$', views.products_list, name='products_list'),
    url(r'^product/create$', views.create_product, name='create_product')
]