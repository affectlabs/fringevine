# Create your views here.

from django.http import HttpResponse, HttpResponseRedirect
from django.template import Context, loader
from django.shortcuts import get_object_or_404, render_to_response
from fringevine.shorts.models import Short, ShortInputForm, Author, Show
from django import newforms as forms

def index(request):
    short_list = Short.objects.all().order_by('text')[:10]
    form = ShortInputForm()
    return render_to_response('index.html', {'short_list': short_list, 'form': form})

def submit(request):
	if request.method == 'POST':
		form = ShortInputForm(request.POST)
	else:
		return HttpResponseRedirect('/')
	if form.is_valid():
		instance = form.save(commit=False)
		defaultAuthor = Author.objects.get(pk=1)
		defaultShow = Show.objects.get(pk=1)
		instance.author = defaultAuthor
		instance.show = defaultShow
		instance.thumbsup = '0'
		new_instance = instance.save()
		return HttpResponseRedirect('/shorts/success/')
	else:
		form = ShortInputForm()
		return HttpResponseRedirect('/')
	
def success(request):
    return render_to_response('shorts/success.html')
