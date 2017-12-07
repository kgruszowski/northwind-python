from django import forms
from customers.models import Categories, Suppliers

class SubmitSearchForm(forms.Form):

    def __init__(self, *args, **kwargs):
        super(SubmitSearchForm, self).__init__(*args, **kwargs)
        for visible in self.visible_fields():
            visible.field.widget.attrs['class'] = 'form-control'

    name = forms.CharField(label='Search')


class CreateProduct(forms.Form):
    productname = forms.CharField(label='Product name')
    supplier = forms.ModelChoiceField(queryset=Suppliers.objects.all())
    category = forms.ModelChoiceField(queryset=Categories.objects.all())
    quantityperunit = forms.CharField(label='Qty per unit')
    unitprice = forms.CharField(label='Price')
    unitsinstock = forms.CharField(label='Units in storck')
    unitsonorder = forms.CharField(label='Uniets on order')
    reorderlevel = forms.CharField(label='Reordered level')
    discontinued = forms.CheckboxInput()