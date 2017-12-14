from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect
from django.urls import reverse
from django.views import generic
from django.db.models import Sum

from customers.models import Orders, Shippers, Suppliers 


class IndexView(generic.ListView):
        template_name = 'orders/orders-list.html'
        context_object_name = 'orders'

        def get_queryset(self):
            return Orders.objects.order_by('orderid')[:5]

class DetailView(generic.DetailView):
        model = Orders
        template_name = 'orders/detail.html'

        def totalPrice(self):
            total = 0
            for i in self.get_object().orderdetails_set.values():
                total += i.get('quantity') * i.get('unitprice')
            return total
