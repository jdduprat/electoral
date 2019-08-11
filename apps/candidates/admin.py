from django.contrib import admin
from .models import *
from apps.voto.models import Voto
from apps.places.models import Table

def create_votes(self, request, queryset):
    for obj in queryset:
        votes = Voto.objects.filter(election = obj.id)
        if votes.count() > 0: # or not obj.current:
            #Exists votes for this election
            #votes.delete()
            self.message_user(request, "La elección seleccionada no está Vigente o ya posee votos.")
        else:
            #Creo votos por mesa, lista y categoria de la eleccion
            categories = Category.objects.filter(election=obj)
            electoral_lists = ElectoralList.objects.filter(current=True, party__election=obj) | ElectoralList.objects.filter(current=True, party__isnull=True)
            tables = Table.objects.filter(election=obj)

            count = 0
            for table in tables:
                for category in categories:
                    for el in electoral_lists:                    
                        count += 1
                        Voto.objects.create(created_by=request.user, election=obj, table=table, category=category, electoral_list=el, quantity=0)

            self.message_user(request, "%s Registros creados" % count)

create_votes.short_description = "Crear Registros para Conteo de Votos"


def close_all_tables(self, request, queryset):
    for obj in queryset:
        Table.objects.filter(election=obj).update(closed=True, closed_by=request.user)

close_all_tables.short_description = "Cerrar todas las mesas"


def open_all_tables(self, request, queryset):
    for obj in queryset:
        Table.objects.filter(election=obj).update(closed=False, closed_by=None, reopen_by=request.user)

open_all_tables.short_description = "Abrir todas las mesas"


class ElectionAdmin(admin.ModelAdmin):
    list_display = ['description', 'date', 'year', 'current']
    list_filter = ['date', 'year', 'current']
    fields= ['description', 'date', 'year', 'current', 'categories', 'parties']
    actions = [create_votes, close_all_tables, open_all_tables, ]


def check(self, request, queryset):
        rows_updated = queryset.update(current=True)
        if rows_updated == 1:
            message_bit = "1 lista fue"
        else:
            message_bit = "%s listas fueron" % rows_updated
        self.message_user(request, "%s marcada/s como vigente/s" % message_bit)

check.short_description = "Marcar como Vigente"


def uncheck(self, request, queryset):
        rows_updated = queryset.update(current=False)
        if rows_updated == 1:
            message_bit = "1 lista fue"
        else:
            message_bit = "%s listas fueron" % rows_updated
        self.message_user(request, "%s marcada/s como NO vigente/s" % message_bit)

uncheck.short_description = "Quitar Vigencia"


class PartyAdmin(admin.ModelAdmin):
    list_display = ['name', 'address', 'city', 'color', 'order']
    list_filter = ['city']
    fields= ['name', 'address', 'city', 'color', 'order']


class ElectoralListAdmin(admin.ModelAdmin):
    list_display = ['name', 'party', 'current', 'head', 'order']
    list_filter = ['party', 'head']
    fields = ['name', 'party', 'current', 'head', 'order']
    actions = [check, uncheck,]


class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name', 'order'] 
    list_filter = []
    fields= ['name', 'order']

admin.site.register(Election, ElectionAdmin)
admin.site.register(Party, PartyAdmin)
admin.site.register(ElectoralList, ElectoralListAdmin)
admin.site.register(Category, CategoryAdmin)