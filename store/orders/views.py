from django.shortcuts import get_object_or_404, render, redirect
from django.http import HttpResponseRedirect, HttpResponse
from django.urls import reverse
from django.views import generic
from django.forms import formset_factory, inlineformset_factory
from django.views.generic.edit import FormView
from django.db.models import Sum

from core.models import Orders, OrderDetails  
from .forms import addOrderForm, ProductForm


class IndexView(generic.ListView):
        template_name = 'orders/orders-list.html'
        context_object_name = 'orders'

        def get_queryset(self):
            return Orders.objects.order_by('orderid')

class DetailView(generic.DetailView):
        model = Orders
        template_name = 'orders/order_detail.html'

        def totalPrice(self):
            total = 0
            for i in self.get_object().orderdetails_set.values():
                total += ( 1 - i.get('discount') ) * i.get('quantity') * i.get('unitprice')
            return total + self.get_object().freight

def addOrder(request):
    OrderDetailsFormSet = inlineformset_factory(Orders,
        OrderDetails,
        form=ProductForm,
        fields=('product', 'unitprice', 'quantity' , 'discount'),
        can_delete=False,
        extra=1)
    order=Orders()
    if request.method == 'POST':
        f = addOrderForm(request.POST)
        if f.is_valid():
            order = f.save(commit=False)
            fs = OrderDetailsFormSet(request.POST,instance=order)
            if fs.is_valid():
                order.save()
                productsToSave = fs.save(commit=False)
                for prod in productsToSave:
                    prod.discount /= 100 
                    prod.save()
                return redirect('../' + str(order.orderid) + '/')
    else:
        f  = addOrderForm(instance=order)
        fs = OrderDetailsFormSet(instance=order)
    return render(request, 'orders/addOrder.html', context = {'fs': fs,'f':f,'order':order})
