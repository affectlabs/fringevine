from django.conf.urls.defaults import *

urlpatterns = patterns('',
    # Example:
    # (r'^fringevine/', include('fringevine.foo.urls')),
    (r'^$', 'fringevine.shorts.views.index'),

    # Uncomment this for admin:
     (r'^admin/', include('django.contrib.admin.urls')),
)
