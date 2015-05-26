#-*- coding: utf-8 -*-
from django.conf.urls import url
from myapp.views import MyView

urlpatterns = [
    url(r'^$', MyView.as_view()),
]
