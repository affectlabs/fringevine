from django import newforms as forms


class ShortInputForm(forms.Form):
    text = forms.CharField()