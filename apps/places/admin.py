from django.contrib import admin
from .models import School, Table
from django.contrib.admin.helpers import ActionForm
from django import forms
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
    list_display = ['name', 'address', 'city']
    list_filter = ['city__department__province', 'city']
    fields= ['name', 'address', 'city', 'assigned_to']
    #actions = [to_assign, ]
    #action_form = UpdateActionForm

#    def get_queryset(self, request):
#        qs = super(SchoolAdmin, self).get_queryset(request)

#        if request.user.has_perm('voto.can_read_assigned_schools'):
#            return qs.filter(assigned_to=request.user)
#        else:
#            return qs

class TableAdmin(admin.ModelAdmin): 
    pass
    #list_display = ['name', 'school', 'elctors_qty', 'closed_by']
    #list_filter = ['school', 'school__city', 'closed_by']
    #fields= ['name', 'school', 'elctors_qty', 'closed', 'closed_by', 'reopen_by']
    

admin.site.register(School, SchoolAdmin)
admin.site.register(Table, TableAdmin)