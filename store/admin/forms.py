from django import forms

class SubmitSearchForm(forms.Form):

    def __init__(self, *args, **kwargs):
        super(SubmitSearchForm, self).__init__(*args, **kwargs)
        for visible in self.visible_fields():
            visible.field.widget.attrs['class'] = 'form-control'

    name = forms.CharField(label='Search')