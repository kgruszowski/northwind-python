from django.shortcuts import get_object_or_404, render, redirect
from django.db.models import DateTimeField, ExpressionWrapper, F, Sum, Q, FloatField
from django.http import HttpResponseRedirect, HttpResponse
from django.urls import reverse
from django.views import generic
from django.forms import formset_factory, inlineformset_factory
from django.views.generic.edit import FormView
from django.db.models import Sum

from core.models import Orders, OrderDetails, Customers, Suppliers
from .forms import ReportForm

def reportForm(request):
    if request.method == 'POST':
        f = ReportForm(request.POST)
        if f.is_valid():
            supplier = f.cleaned_data['supplier']
            startdate = f.cleaned_data['startdate']
            enddate = f.cleaned_data['enddate']
            customers = Customers.objects.annotate(supplier_value=Sum(ExpressionWrapper(F('orders__orderdetails__quantity') * F('orders__orderdetails__unitprice') * (1 - F('orders__orderdetails__discount')), output_field=FloatField()),filter=Q(orders__orderdetails__product__supplier=Suppliers.objects.get(companyname=supplier), orders__orderdate__range=(startdate, enddate)))).filter(supplier_value__gt=0).order_by('companyname')

            return render(request, 'report/reportResults.html', context = { 'results' : customers, 'supplier' : supplier })
    else:
        f  = ReportForm()
    return render(request, 'report/report.html', context = {'f':f})
