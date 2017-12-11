from django.shortcuts import render
from customers.models import Products
from .forms import SubmitSearchForm
from .forms import CreateProductForm

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

    if request.method == 'POST':
        form = CreateProductForm(request.POST)
        if form.is_valid():
            new_product = form.save()
    else:
        form = CreateProductForm()

    context = {
        'form': form
    }

    return render(request, 'create-product.html', context)