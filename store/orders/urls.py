from django.urls import path

from . import views

app_name = 'orders'
urlpatterns = [
            path('list/', views.IndexView.as_view(), name='index'),
]
