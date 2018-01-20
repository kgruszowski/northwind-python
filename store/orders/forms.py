from django import forms
from core.models import Orders, OrderDetails, Products, Suppliers
from django.db import models
from django.forms import ModelForm

class ProductForm(ModelForm):
        class Meta:
            model = OrderDetails
            fields = [ 'product', 'unitprice', 'quantity', 'discount' ]

        def __init__(self, *args, **kwargs):
            super(ProductForm, self).__init__(*args, **kwargs)
            for visible in self.visible_fields():
                visible.field.widget.attrs['class'] = 'form-control'
            for key in self.fields:
                self.fields[key].required = True
            self.fields['product'].queryset = Products.objects.filter(discontinued=0)
                
class addOrderForm(ModelForm):
        def __init__(self, *args, **kwargs):
            super(addOrderForm, self).__init__(*args, **kwargs)
            for visible in self.visible_fields():
                visible.field.widget.attrs['class'] = 'form-control'
            for key in self.fields:
                self.fields[key].required = True

        class Meta:
            model = Orders
            fields = [ 'shipvia', 'customer', 'employee', 'orderdate', 'freight', 'shipname', 'shipaddress', 'shipcity', 'shipregion', 'shippostalcode', 'shipcountry' ]
            DATEPICKER = {
                'type': 'text',
                'class': 'form-control',
                'id': 'datetimepicker1'
            }
            
            widgets = {
                'orderdate': forms.DateInput(attrs=DATEPICKER)
            }

