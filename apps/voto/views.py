from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .models import Voto
from apps.places.models import School, Table
from apps.candidates.models import Category, Party, ElectoralList, Election
from apps.users.models import Usuario
from django.http import HttpResponse, Http404
from django.db import DatabaseError


@login_required
def votesList(request):
    context = {}
    context['schools'] = School.objects.filter(assigned_to=request.user)
    context['tables'] = Table.objects.filter(school__assigned_to=request.user)
    context['categories'] = Category.objects.filter(election__current=True).order_by('pk')
    context['votes'] = Voto.objects.filter(table__school__assigned_to=request.user, election__current=True).order_by('electoral_list__party', 'electoral_list', 'category__pk')
    
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


def closeTable(request):
    if request.is_ajax():
        id = request.POST.get('pk', None)
        
        table = Table.objects.get(pk=id)
        table.closed = True
        table.closed_by = request.user
        table.save()
                    
        return HttpResponse('success')
    else:
        raise Http404 


def openTable(request):
    if request.is_ajax():
        id = request.POST.get('pk', None)
        
        table = Table.objects.get(pk=id)
        table.closed = False
        table.reopen_by = request.user
        table.save()
                    
        return HttpResponse('success')
    else:
        raise Http404 


from django.db.models import Count, Sum


def votesChart(request):
    context={}

    votes = Voto.objects.filter(election__current=True)
    other_votes = Voto.objects.filter(election__current=True, electoral_list__party__isnull=True)

    context['election'] = Election.objects.filter(current=True).last()
    context['categories'] = Category.objects.filter(election__current=True).order_by('order')
    print(context['categories'])
    context['votes_per_party'] = votes.exclude(electoral_list__party__isnull=True).values('category__pk', 'electoral_list__party__name', 'electoral_list__party__color').annotate(Sum('quantity')).order_by('category__order', 'electoral_list__party__name')
    context['other_votes'] = other_votes.values('electoral_list__name').annotate(Sum('quantity'))
    context['other_votes_bycat'] = other_votes.values('category__pk', 'electoral_list__name').annotate(Sum('quantity')).order_by('category__order', 'electoral_list__name')
    context['votes_bylist'] = votes.exclude(electoral_list__party__isnull=True).values('category__pk', 'electoral_list__name', 'electoral_list__head', 'electoral_list__party__color').annotate(Sum('quantity')).order_by('-quantity__sum')
    context['other_votes_bylist'] = other_votes.values('category__pk', 'electoral_list__name', 'electoral_list__head').annotate(Sum('quantity')).order_by('-quantity__sum')

    context['totals_votes'] = votes.filter(category__pk=1).aggregate(Sum('quantity'))
    context['totals_positives'] = votes.filter(category__pk=1).exclude(electoral_list__party__isnull=True).aggregate(Sum('quantity'))
    context['totals_tables'] = Table.objects.filter(closed=True).count()
    context['totals_electors'] = Table.objects.all().aggregate(Sum('elctors_qty'))
    context['qty_bycat'] = votes.values('category__pk').annotate(Sum('quantity'))

    return render(request, 'public_report.html', context)


def manteinance(request):
    context={}
    
    return render(request, 'manteinance.html', context)