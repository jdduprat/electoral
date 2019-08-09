from django.contrib import admin
from .models import Voto, VotoSummary, VotoCharge, VotoGraphs
from django.db.models import Count, Sum, Min, Max, DateField
from django.db.models.functions import Trunc
from jet.filters import RelatedFieldAjaxListFilter

@admin.register(Voto)
class VotoAdmin(admin.ModelAdmin):
    list_display = ['election', 'get_school', 'table', 'category', 'electoral_list', 'quantity']
    list_filter = ['election', 'table__school', 'table', 'category', 'electoral_list', 'quantity']
    fields= ['election', 'table', 'category', 'electoral_list', 'quantity']

    def get_school(self, obj):
        return obj.table.school

    get_school.short_description = 'Escuela'

    def get_queryset(self, request):
        qs = super(VotoAdmin, self).get_queryset(request)
        return qs

    def save_model(self, request, obj, form, change):             
        if not change: 
        # can use this condition also to set 'created_by'    
        # if not getattr(obj, 'created_by', None):            
            obj.created_by = request.user
        obj.save()


def get_next_in_date_hierarchy(request, date_hierarchy):
    if date_hierarchy + '__day' in request.GET:
        return 'hour'
    if date_hierarchy + '__month' in request.GET:
        return 'day'
    if date_hierarchy + '__year' in request.GET:
        return 'week'
    return 'month'


@admin.register(VotoSummary)
class LoadContractSummaryAdmin(admin.ModelAdmin):
    change_list_template = 'votes_list.html'
    actions = None
    
    # Prevent additional queries for pagination.
    show_full_result_count = False

    #list_display = ['electoral_list', 'category', 'quantity']
    list_filter = (
        'election',
        'table__school',
        'table',
        'electoral_list__party',
        'electoral_list',
        'category'
    )

    def has_add_permission(self, request):
        return False

    def has_delete_permission(self, request, obj=None):
        return False

    def has_change_permission(self, request, obj=None):
        return True

    def has_module_permission(self, request):
        return True

    def changelist_view(self, request, extra_context=None):
        response = super().changelist_view(request, extra_context=extra_context)

        # self.get_queryset would return the base queryset. ChangeList
        # apply the filters from the request so this is the only way to
        # get the filtered queryset.

        try:
            qs = response.context_data['cl'].queryset
        except (AttributeError, KeyError):
            # See issue #172.
            # When an invalid filter is used django will redirect. In this
            # case the response is an http redirect response and so it has
            # no context_data.
            return response


        # List view
        metrics = {
            'total_votes': Sum('quantity'),
        }

        response.context_data['summary'] = list(
            qs
            .values('table__school', 'table', 'electoral_list__party__name', 'electoral_list__party__color', 'category__name', 'electoral_list__name', 'electoral_list__head')
            .annotate(**metrics)
            .order_by('-total_votes')
        )

        # List view summary
        response.context_data['summary_total'] = dict(qs.aggregate(**metrics))
        
        return response


from apps.candidates.models import Category, Election
from apps.places.models import Table

@admin.register(VotoCharge)
class LoadVotoChargeAdmin(admin.ModelAdmin):
    change_list_template = 'control_charge.html'
    list_filter = (
        'election',
        'table__school__assigned_to',
        'table__school',
        'table',
        'electoral_list__party',
        'electoral_list',
        'category'
    )

    def has_add_permission(self, request):
        return False

    def has_delete_permission(self, request, obj=None):
        return False

    def has_change_permission(self, request, obj=None):
        return True

    def has_module_permission(self, request):
        return True

    def changelist_view(self, request, extra_context=None):
        q = request.GET.copy()

        if not 'election__id__exact' in q:             
            q['election__id__exact'] = str(Election.objects.get(current=True).pk)

        if not 'table__id__exact' in request.GET:    
            q['table__id__exact'] = str(Table.objects.all().first().pk)

        request.GET = q
        request.META['QUERY_STRING'] = request.GET.urlencode()

        response = super().changelist_view(request, extra_context=extra_context)

        # self.get_queryset would return the base queryset. ChangeList
        # apply the filters from the request so this is the only way to
        # get the filtered queryset.

        try:
            qs = response.context_data['cl'].queryset
        except (AttributeError, KeyError):
            # See issue #172.
            # When an invalid filter is used django will redirect. In this
            # case the response is an http redirect response and so it has
            # no context_data.
            return response

        t = q['table__id__exact']

        response.context_data['categories'] = Category.objects.filter(election__current=True).order_by('pk')
        response.context_data['votes'] = list(qs.order_by('electoral_list__party', 'electoral_list', 'category__pk'))
        response.context_data['summary'] = list(qs.values('category__name').annotate(Sum('quantity')).order_by('category__pk'))
        response.context_data['table'] = Table.objects.get(pk=t)

        return response


@admin.register(VotoGraphs)
class VotoGraphsAdmin(admin.ModelAdmin):
    change_list_template = 'graphs_votes_list_report.html'

    list_filter = (
        'election', 
    )

    def has_add_permission(self, request):
        return False

    def has_delete_permission(self, request, obj=None):
        return False

    def has_change_permission(self, request, obj=None):
        return True

    def has_module_permission(self, request):
        return True

    def changelist_view(self, request, extra_context=None):
        q = request.GET.copy()

        if not 'election__id__exact' in q:             
            q['election__id__exact'] = str(Election.objects.get(current=True).pk)

        request.GET = q
        request.META['QUERY_STRING'] = request.GET.urlencode()

        response = super().changelist_view(request, extra_context=extra_context)

        # self.get_queryset would return the base queryset. ChangeList
        # apply the filters from the request so this is the only way to
        # get the filtered queryset.

        try:
            qs = response.context_data['cl'].queryset
        except (AttributeError, KeyError):
            # When an invalid filter is used django will redirect. In this
            # case the response is an http redirect response and so it has
            # no context_data.
            return response

        election = q['election__id__exact']

        votes = Voto.objects.filter(election=election)
        other_votes = Voto.objects.filter(election=election, electoral_list__party__isnull=True)
        
        tables = Table.objects.filter(election=election) #id__in=votes.values_list('table', flat=True))
        
        response.context_data['election'] = election
        response.context_data['categories'] = Category.objects.filter(election=election)
        response.context_data['votes_per_party'] = votes.exclude(electoral_list__party__isnull=True).values('category__pk', 'electoral_list__party__name', 'electoral_list__party__color').annotate(Sum('quantity')).order_by('category__pk', 'electoral_list__party__name')
        response.context_data['other_votes'] = other_votes.values('electoral_list__name').annotate(Sum('quantity'))
        response.context_data['other_votes_bycat'] = other_votes.values('category__pk', 'electoral_list__name').annotate(Sum('quantity')).order_by('category__pk', 'electoral_list__name')
        response.context_data['votes_bylist'] = votes.exclude(electoral_list__party__isnull=True).values('category__pk', 'electoral_list__name', 'electoral_list__head', 'electoral_list__party__color').annotate(Sum('quantity')).order_by('-quantity__sum')
        response.context_data['other_votes_bylist'] = other_votes.values('category__pk', 'electoral_list__name', 'electoral_list__head').annotate(Sum('quantity')).order_by('-quantity__sum')

        cat_filter = Category.objects.filter(election__current=True).first()

        response.context_data['totals_votes'] = votes.filter(category__pk=cat_filter.pk).aggregate(Sum('quantity'))
        response.context_data['totals_positives'] = votes.filter(category__pk=cat_filter.pk).exclude(electoral_list__party__isnull=True).aggregate(Sum('quantity'))
        response.context_data['totals_tables'] = tables.exclude(closed=False).count()
        response.context_data['totals_electors'] = tables.aggregate(Sum('elctors_qty'))
        response.context_data['qty_bycat'] = votes.values('category__pk').annotate(Sum('quantity'))

        return response