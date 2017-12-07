from django.shortcuts import render
from customers.models import Products
from .forms import SubmitSearchForm
from .forms import CreateProduct

def index(request):
    all_products = Products.objects.all()


    context = {
        'products': all_products
    }

    return render(request, 'dashboard.html', context)


def products(request):

    form = SubmitSearchForm(request.GET)

    data = None
    if form.is_valid():
        data = form.cleaned_data

    if data is not None:
        products = Products.objects.filter(productname__contains=data['name'])
    else:
        products = Products.objects.all()

    context = {
        'form': form,
        'products': products
    }

    return render(request, 'products.html', context)


def create_product(request):

    form = CreateProduct()

    if request.method == 'POST':
        form = CreateProduct(request.POST)
        if form.is_valid():
            new_product = form.save()

    context = {
        'form': form
    }

    return render(request, 'create-product.html', context)