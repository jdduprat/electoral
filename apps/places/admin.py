from django.contrib import admin
from .models import School, Table
from apps.candidates.models import Election
from django.contrib.admin.helpers import ActionForm
from django import forms
from django.utils.safestring import mark_safe
#from apps.users.models import Usuario


def to_assign(self, request, queryset):
    user = request.POST['user']
    rows_updated = queryset.update(assigned_to=user)
    if rows_updated == 1:
        message_bit = u"1 escuela fué"
    else:
        message_bit = "%s escuelas fueron" % rows_updated
    self.message_user(request, "%s asignada/s a " % message_bit + str(user))

to_assign.short_description = 'Asignar usuario a escuela/s seleccionada/s'


class UpdateActionForm(ActionForm):
    pass
	#user = forms.ModelChoiceField(queryset=Usuario.objects.all())


class SchoolAdmin(admin.ModelAdmin):    
    list_display = ['name', 'address', 'city', 'get_tables_total', 'get_users_assigned', 'show_gmap_url']
    list_filter = ['table__election', 'city__department__province', 'city']
    fields= ['name', 'address', 'city', 'assigned_to', 'gmap_location']
    #actions = [to_assign, ]
    #action_form = UpdateActionForm
    
    def get_queryset(self, request):
        q = request.GET.copy()
        if 'table__election__id__exact' in q:
            self.election = q['table__election__id__exact']
        else:
            self.election = None

        return super(SchoolAdmin, self).get_queryset(request)

    def get_users_assigned(self, obj):
        return ", ".join([u.username for u in obj.assigned_to.all()])

    get_users_assigned.short_description = 'USUARIO/S'

    def get_tables_total(self, obj):
        if self.election:
            return Table.objects.filter(school=obj, election=self.election).count()
        else:
            return Table.objects.filter(school=obj).count()
    
    get_tables_total.short_description = 'MESAS'

    def show_gmap_url(self, obj):
        if obj.gmap_location is None:
            url = '-'
        else:
            url = '<a href="%s" target="_blank">%s</a>' % (obj.gmap_location, '<i class="icon-pin"></i>')
        return mark_safe(url)


class TableAdmin(admin.ModelAdmin): 
    list_display = ['name', 'school', 'elctors_qty', 'closed_by', 'reopen_by']
    list_filter = ['school__city', 'election', 'school', 'closed_by']
    fields= ['name', 'school', 'elctors_qty', 'closed', 'election']
    

admin.site.register(School, SchoolAdmin) 
admin.site.register(Table, TableAdmin)