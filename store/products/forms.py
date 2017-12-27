from django import forms
from core.models import Categories, Suppliers, Products

class SubmitSearchForm(forms.Form):

    def __init__(self, *args, **kwargs):
        super(SubmitSearchForm, self).__init__(*args, **kwargs)
        for visible in self.visible_fields():
            visible.field.widget.attrs['class'] = 'form-control'

    name = forms.CharField(label='Search')


class CreateProductForm(forms.ModelForm):

    def __init__(self, *args, **kwargs):
        super(CreateProductForm, self).__init__(*args, **kwargs)
        for visible in self.visible_fields():
            visible.field.widget.attrs['class'] = 'form-control'

    class Meta:
        model = Products
        fields = ['productid', 'productname', 'supplier', 'category', 'quantityperunit', 'unitprice', 'unitsinstock', 'unitsonorder',
                  'reorderlevel']