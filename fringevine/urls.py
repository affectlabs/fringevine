from django.conf.urls.defaults import *

urlpatterns = patterns('',
    # Example:
    # (r'^fringevine/', include('fringevine.foo.urls')),
    (r'^$', 'fringevine.shorts.views.index'),
    (r'^shorts/submit/$', 'fringevine.shorts.views.submit'),
    (r'^shorts/success/$', 'fringevine.shorts.views.success'),
    (r'^search/?$', 'fringevine.shorts.views.search'),

    # Uncomment this for admin:
     (r'^admin/', include('django.contrib.admin.urls')),
)
