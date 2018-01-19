from django.urls import path

from . import views

app_name = 'orders'
urlpatterns = [
            path('', views.IndexView.as_view(), name='index'),
            path('<int:pk>/', views.DetailView.as_view(), name='orderDetail'),
#            path('addOrder/', views.addOrder.as_view(), name='orderAdd'),
            path('addOrder/', views.addOrder, name='orderAdd'),
            
]
