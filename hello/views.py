from django.shortcuts import render
from django.http import HttpResponse
from django.views.generic import TemplateView

class Hello(TemplateView):
    template_name = "hello.html"