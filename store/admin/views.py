from django.shortcuts import render
from django.http.response import HttpResponse
from customers.models import Products


def index(request):
    all_products = Products.objects.all()


    context = {
        'products': all_products
    }

    return render(request, 'dashboard.html', context)


def products(request):
    all_products = Products.objects.all()

    context = {
        'products': all_products
    }

    return render(request, 'products.html', context)