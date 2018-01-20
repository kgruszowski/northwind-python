from django.shortcuts import render
from django.shortcuts import redirect
from django.http import Http404
from django.views.decorators.csrf import csrf_exempt
from core.models import Products, OrderDetails
from .forms import SubmitSearchForm
from .forms import CreateProductForm


@csrf_exempt
def listAll(request):
    form = SubmitSearchForm(request.GET)

    data = None
    if form.is_valid():
        data = form.cleaned_data

    if data is not None:
        products = Products.objects.filter(productname__contains=data['name']).order_by('productid').reverse()
    else:
        products = Products.objects.all().order_by('productid').reverse()

    context = {
        'form': form,
        'products': products
    }

    return render(request, 'products/list.html', context)


@csrf_exempt
def listAll2(request):
    form = SubmitSearchForm(request.GET)

    data = None
    if form.is_valid():
        data = form.cleaned_data

    if data is not None:
        products = Products.objects.filter(productname__contains=data['name']).select_related('category', 'supplier').order_by('productid').reverse()
    else:
        products = Products.objects.all().select_related('category', 'supplier').order_by('productid').reverse()

    context = {
        'form': form,
        'products': products
    }

    return render(request, 'products/list2.html', context)


@csrf_exempt
def listAll3(request):
    form = SubmitSearchForm(request.GET)

    data = None
    if form.is_valid():
        data = form.cleaned_data

    if data is not None:
        products = Products.searchProduct(Products, data['name'])
    else:
        products = Products.getProductsList(Products)

    context = {
        'form': form,
        'products': products
    }

    return render(request, 'products/list3.html', context)


def add(request):

    if request.method == 'POST':
        form = CreateProductForm(request.POST)
        if form.is_valid():
            new_product = form.save(commit=False)
            new_product.discontinued = 0
            new_product.save()
            return redirect('products:product_list')
    else:
        form = CreateProductForm()

    context = {
        'form': form
    }

    return render(request, 'products/add.html', context)


def update(request, product_id):

    try:
        product = Products.objects.get(pk=product_id)
    except Products.DoesNotExist:
        raise Http404('Product does not exist')

    form = CreateProductForm(request.POST or None, instance=product)

    if form.is_valid():
        form.save()
        return redirect('products:list-all')

    context = {
        'product': product,
        'form': form
    }

    return render(request, 'products/update.html', context)


def remove(request, product_id):

    try:
        product = Products.objects.get(pk=product_id)

        orders = OrderDetails.objects.filter(product=product.productid)

        if not orders:
            product.delete()
        else:
            Products.objects.filter(pk=product_id).update(discontinued=1)

    except Products.DoesNotExist:
        raise Http404('Product does not exist')

    return redirect('products:list-all')
