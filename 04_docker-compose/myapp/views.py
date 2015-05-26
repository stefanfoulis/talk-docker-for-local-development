import datetime
from django.http import HttpResponse
from django.views.generic import View


class MyView(View):
    def get(self, request, *args, **kwargs):
        now = datetime.datetime.now()
        html = "<html><body>It is now %s.</body></html>" % now
        # import ipdb; ipdb.set_trace()
        return HttpResponse(html)
