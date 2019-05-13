from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .models import Voto
from apps.places.models import School, Table
from apps.candidates.models import Category, Party, ElectoralList


@login_required
def VotesList(request):
    # votes = Votos.objects.filter(table__school_assigned_to = request.user)
    context = {}
    context['schools'] = School.objects.filter(assigned_to = request.user)
    context['tables'] = Table.objects.filter(school__assigned_to = request.user)
    context['categories'] = Category.objects.all()
    context['votes'] = Voto.objects.filter(table__school__assigned_to = request.user)
    
    return render(request, 'votes_charge.html', context)