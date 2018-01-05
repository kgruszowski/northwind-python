from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect, HttpResponse
from django.urls import reverse
from django.views import generic
from django.views.generic.edit import FormView
from django.db.models import Sum

from core.models import Orders, Shippers, Suppliers
from .forms import addOrderForm


class IndexView(generic.ListView):
        template_name = 'orders/orders-list.html'
        context_object_name = 'orders'

        def get_queryset(self):
            return Orders.objects.order_by('orderid')[:5]

class DetailView(generic.DetailView):
        model = Orders
        template_name = 'orders/order_detail.html'

        def totalPrice(self):
            total = 0
            for i in self.get_object().orderdetails_set.values():
                total += ( 1 - i.get('discount') ) * i.get('quantity') * i.get('unitprice')
            return total + self.get_object().freight

class addOrder(FormView):
        template_name = 'orders/addOrder.html'
        form_class = addOrderForm
        success_url = '/orders/thanks/'

        def form_valid(self, form):
            form.save()
            return HttpResponseRedirect('../thanks/')
#            return HttpResponse("This is form content: " + form.cleaned_data['shipper'].phone)

#JUST FOR FORMS TUTORIAL, TO BE REMOVED
#def addOrder(request):
#    # if this is a POST request we need to process the form data
#    if request.method == 'POST':
#        # create a form instance and populate it with data from the request:
#        form = NameForm(request.POST)
#        # check whether it's valid:
#        if form.is_valid():
#        # process the data in form.cleaned_data as required
#        # ...
#        # redirect to a new URL:
#            return HttpResponse(form.cleaned_data['your_name'])
#            #return HttpResponseRedirect('/orders/thanks/')
#        else:
#            return HttpResponse('aaaaa!')
#    # if a GET (or any other method) we'll create a blank form
#    else:
#        form = NameForm()
#
#    return render(request, 'orders/name.html', {'form': form})
#
def thanks(request):
        template_name = 'orders/thanks.html'
        return HttpResponse('thanks method called!')

