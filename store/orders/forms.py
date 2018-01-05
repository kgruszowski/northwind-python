from django import forms
from core.models import Shippers, Orders

from django.db import models
from django.forms import ModelForm

class addOrderForm(ModelForm):
    class Meta:
        model = Orders
        fields = [ 'shipvia', 'customer', 'employee', 'orderdate', 'freight', 'shipname', 'shipaddress', 'shipcity', 'shipregion', 'shippostalcode', 'shipcountry' ]
        widgets = {
                'orderdate': forms.DateInput(attrs={'id': 'datetimepicker1'}),
                }
#class addOrderForm(forms.Form):
    
#        customer = forms.CharField(label='Your name', max_length=100)
#        employee = forms.CharField(label='Your name', max_length=100)
#        orderDay = forms.ChoiceField(choices=[(x, x) for x in range(1,31)])
#        orderMonth = forms.ChoiceField(choices=[(x, x) for x in range(1,10)])
#        orderYear = forms.ChoiceField(choices=[(x, x) for x in range(1,10)])
#    
#        shipper = forms.ModelChoiceField(queryset=Shippers.objects.get_queryset(),empty_label='Please choice shipper')

