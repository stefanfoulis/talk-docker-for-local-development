#-*- coding: utf-8 -*-
from django.contrib import admin
from . import models


class MyModelAdmin(admin.ModelAdmin):
    pass


admin.site.register(models.MyModel, MyModelAdmin)
