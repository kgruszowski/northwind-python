from django.shortcuts import render
from django.http.response import HttpResponse


def index(request):
    return HttpResponse("admin")


def products(request):
    return HttpResponse('product')
