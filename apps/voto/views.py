from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .models import Voto
from apps.places.models import School, Table
from apps.candidates.models import Category, Party, ElectoralList
from django.http import HttpResponse, Http404
from django.db import DatabaseError

@login_required
def votesList(request):
    # votes = Votos.objects.filter(table__school_assigned_to = request.user)
    context = {}
    context['schools'] = School.objects.filter(assigned_to = request.user)
    context['tables'] = Table.objects.filter(school__assigned_to = request.user)
    context['categories'] = Category.objects.filter(election__current=True)
    context['votes'] = Voto.objects.filter(table__school__assigned_to = request.user, election__current=True)
    
    return render(request, 'votes_charge.html', context)


def updateVote(request):
    if request.is_ajax():
        id = request.POST.get('pk', None)
        qty = request.POST.get('qty', None)
        
        vote = Voto.objects.get(pk=id)
        vote.quantity = qty
        vote.save()
                    
        return HttpResponse('success')
    else:
        raise Http404 