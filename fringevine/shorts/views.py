# Create your views here.

from django.http import HttpResponse
from django.template import Context, loader
from fringevine.shorts.models import Short

def index(request):
    short_list = Short.objects.all().order_by('text')[:10]
    t = loader.get_template('index.html')
    c = Context({
        'short_list': short_list,
    })
    return HttpResponse(t.render(c))
