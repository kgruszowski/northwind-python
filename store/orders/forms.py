from django import forms
from core.models import Shippers

class addOrderForm(forms.Form):
        your_name = forms.CharField(label='Your name', max_length=100)
        choice = forms.ChoiceField(choices=[(x, x) for x in range(1,10)])
        shipper = forms.ModelChoiceField(queryset=Shippers.objects.get_queryset(),empty_label='Please choice shipper')

