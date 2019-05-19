from django.contrib import admin
from .models import Voto, VotoSummary
from django.db.models import Count, Sum, Min, Max, DateField
from django.db.models.functions import Trunc


@admin.register(Voto)
class VotoAdmin(admin.ModelAdmin):
    list_display = ['get_school', 'election', 'table', 'category', 'electoral_list', 'quantity']
    list_filter = ['election', 'category']
    fields= ['election', 'table', 'category', 'electoral_list', 'quantity']

    def get_school(self, obj):
        return obj.table.school

    def get_queryset(self, request):
        qs = super(VotoAdmin, self).get_queryset(request)

        if request.user.has_perm('voto.can_read_assigned_schools'):
            return qs.filter(created_by=request.user)
        else:
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
    date_hierarchy = 'created_date'
    # Prevent additional queries for pagination.
    show_full_result_count = False

    #list_display = ['electoral_list', 'category', 'quantity']
    list_filter = (
        'election',
        'category',
        'electoral_list',
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
            'total': Sum('table__elctors_qty'),
            'total_votes': Sum('quantity'),
        }

        response.context_data['summary'] = list(
            qs
            .values('electoral_list__party__name', 'electoral_list__name', 'category__name')
            .annotate(**metrics)
            .order_by('-total_votes')
        )

        print(response.context_data['summary'])

        # List view summary
        response.context_data['summary_total'] = dict(qs.aggregate(**metrics))

        # Chart        
        period = get_next_in_date_hierarchy(request, self.date_hierarchy)
        response.context_data['period'] = period
        summary_over_time = qs.annotate(
            period=Trunc('created_date', 'day', output_field=DateField()),
        ).values('period').annotate(total=Sum('quantity')).order_by('period')

        summary_range = summary_over_time.aggregate(
            low=Min('total'),
            high=Max('total'),
        )
        high = summary_range.get('high', 0)
        low = summary_range.get('low', 0)

        response.context_data['summary_over_time'] = [{
            'period': x['period'],
            'total': x['total'] or 0,
            'pct': \
               ((x['total'] or 0) - low) / (high - low) * 100
               if high > low else 0,
        } for x in summary_over_time]
        
        return response