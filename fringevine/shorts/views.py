# Create your views here.

from django.http import HttpResponse, HttpResponseRedirect
from django.template import Context, loader
from django.shortcuts import get_object_or_404, render_to_response
from fringevine.shorts.models import Short
from django import newforms as forms

def index(request):
    short_list = Short.objects.all().order_by('text')[:10]
    t = loader.get_template('index.html')
    c = Context({
        'short_list': short_list,
    })
    return HttpResponse(t.render(c))

def submit(request):
    ShortForm = forms.form_for_model(Short)
    try:
        sh = request.POST['short']
    except (KeyError):
        return render_to_response('index.html', { 
              'error_message': "No text submitted",
        })
    else:
       # save the short
       add_f = ShortForm(request.POST)
       if add_f.is_valid():
          add_f.save()
       else:
          return render_to_response('index.html', {
                'error_message': "Invalid input",
          })

       # redirect to prevent duplicates
       return HttpResponseRedirect('/shorts/success/')

def success(request):
    return render_to_response('shorts/success.html')
