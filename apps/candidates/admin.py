from django.contrib import admin
from .models import *
from apps.voto.models import Voto
from apps.places.models import Table

def create_votes(self, request, queryset):
    for obj in queryset:
        votes = Voto.objects.filter(election = obj.id)
        if votes.count() > 0 or not obj.current:
            #Exists votes for this election
            #votes.delete()
            self.message_user(request, "La elección seleccionada no está Vigente o ya posee votos.")
        else:
            #Creo votos por mesa, lista y categoria de la eleccion
            categories = Category.objects.filter(election = obj.id)
            electoral_lists = ElectoralList.objects.all()
            tables = Table.objects.all()

            count = 0
            for table in tables:
                for category in categories:
                    if category.is_listless:
                        Voto.objects.create(created_by=request.user, election=obj, table=table, category=category, quantity=0)
                    else:
                        for el in electoral_lists:                    
                            count += 1
                            Voto.objects.create(created_by=request.user, election=obj, table=table, category=category, electoral_list=el, quantity=0)

            self.message_user(request, "%s Registros creados" % count)

create_votes.short_description = "Crear Registros para Conteo de Votos"


class ElectionAdmin(admin.ModelAdmin):
    list_display = ['description', 'date', 'current']
    list_filter = ['date', 'current']
    fields= ['description', 'date', 'current', 'categories', 'parties']
    actions = [create_votes,]


class PartyAdmin(admin.ModelAdmin):
    list_display = ['name', 'address']
    fields= ['name', 'address']


class ElectoralListAdmin(admin.ModelAdmin):
    list_display = ['name', 'party', 'current']
    list_filter = ['party']
    fields = ['name', 'party', 'current']
    actions = ['check', 'uncheck']


class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name', 'is_listless']
    list_filter = ['election__categories']
    fields= ['name', 'is_listless']


def check(self, request, queryset):
        rows_updated = queryset.update(check=True)
        if rows_updated == 1:
            message_bit = "1 lista fue"
        else:
            message_bit = "%s listas fueron" % rows_updated
        self.message_user(request, "%s marcada/s como vigente/s" % message_bit)
check.short_description = "Marcar como Vigente"

def uncheck(self, request, queryset):
        rows_updated = queryset.update(check=False)
        if rows_updated == 1:
            message_bit = "1 lista fue"
        else:
            message_bit = "%s listas fueron" % rows_updated
        self.message_user(request, "%s marcada/s como NO vigente/s" % message_bit)
uncheck.short_description = "Quitar Vigencia"


admin.site.register(Election, ElectionAdmin)
admin.site.register(Party, PartyAdmin)
admin.site.register(ElectoralList, ElectoralListAdmin)
admin.site.register(Category, CategoryAdmin)