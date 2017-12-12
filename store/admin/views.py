from django.shortcuts import render
from django.shortcuts import redirect
from customers.models import Products
from .forms import SubmitSearchForm
from .forms import CreateProductForm


def index(request):
    all_products = Products.objects.all()

    context = {
        'products': all_products
    }

    return render(request, 'dashboard.html', context)


def product_list(request):

    form = SubmitSearchForm(request.GET)

    data = None
    if form.is_valid():
        data = form.cleaned_data

    if data is not None:
        products = Products.objects.filter(productname__contains=data['name'])
    else:
        products = Products.objects.all().order_by('productid').reverse()

    context = {
        'form': form,
        'products': products
    }

    return render(request, 'product-list.html', context)


def product_add(request):

    if request.method == 'POST':
        form = CreateProductForm(request.POST)
        if form.is_valid():
            new_product = form.save(commit=False)
            new_product.discontinued = 0
            new_product.save()
            return redirect('product_list')
    else:
        form = CreateProductForm()

    context = {
        'form': form
    }

    return render(request, 'product-add.html', context)


def product_update(request, product_id):

    product = Products.objects.get(pk=product_id)
    form = CreateProductForm(request.POST or None, instance=product)

    if form.is_valid():
        form.save()
        return redirect('product_list')

    context = {
        'form': form
    }

    return render(request, 'product-update.html', context)