from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .models import Voto
from apps.places.models import School, Table
from apps.candidates.models import Category, Party, ElectoralList, Election
from django.http import HttpResponse, Http404
from django.db import DatabaseError


@login_required
def votesList(request):
    # votes = Votos.objects.filter(table__school_assigned_to = request.user)
    context = {}
    context['schools'] = School.objects.filter(assigned_to=request.user)
    context['tables'] = Table.objects.filter(school__assigned_to=request.user)
    context['categories'] = Category.objects.filter(election__current=True)
    context['votes'] = Voto.objects.filter(table__school__assigned_to=request.user, election__current=True).order_by('electoral_list__party', 'electoral_list')
    
    return render(request, 'votes_charge.html', context)


@login_required
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

from django.db.models import Count, Sum


def votesChart(request):
    context={}

    votes = Voto.objects.filter(election__current=True)

    context['election'] = Election.objects.filter(current=True).last()
    context['categories'] = Category.objects.filter(election__current=True)
    context['votes_per_party'] = votes.exclude(electoral_list__party__isnull=True).values('category__pk', 'electoral_list__party__name').annotate(Sum('quantity')).order_by('category__pk', 'electoral_list__party__name')
    context['other_votes'] = Voto.objects.filter(election__current=True, electoral_list__party__isnull=True).values('electoral_list__name').annotate(Sum('quantity'))
    context['totals_votes'] = votes.aggregate(Sum('quantity'))
    context['totals_electors'] = Table.objects.all().aggregate(Sum('elctors_qty'))

    return render(request, 'public_report.html', context)