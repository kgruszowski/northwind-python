from django.shortcuts import render
from .models import Categories

def index(request):
    categories = Categories.objects.all()

    context = {
        'categories': categories
    }

    return render(request, 'dashboard.html', context)