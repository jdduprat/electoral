from django.contrib import admin
from .models import *
from apps.voto.models import Voto
from apps.places.models import Table

def create_votes(self, request, queryset):
    for obj in queryset:
        cant = Voto.objects.filter(election = obj.id).count()
        if cant > 0 or not obj.current:
            #Ya existen votos para la elección
            pass
        else:
            #Creo votos por mesa, lista y categoria de la eleccion
            categories = Category.objects.filter(election = obj.id)
            electoral_lists = ElectoralList.objects.all()
            tables = Table.objects.all()

            count = 0
            for table in tables:
                for el in electoral_lists:
                    for category in categories:
                        count += 1
                        Voto.objects.create(created_by=request.user, election=obj, table=table, category=category, electoral_list=el, quantity=0)

    self.message_user(request, "%s Registros creados" % count)

create_votes.short_description = "Crear Registros para Conteo de Votos"


class ElectionAdmin(admin.ModelAdmin):
    list_display = ['description', 'date', 'current']
    list_filter = ['date', 'current']
    fields= ['description', 'date', 'current', 'categories']
    actions = [create_votes,]


class PartyAdmin(admin.ModelAdmin):
    list_display = ['name', 'address']
    fields= ['name', 'address']


class ElectoralListAdmin(admin.ModelAdmin):
    list_display = ['name', 'party']
    list_filter = ['party']
    fields = ['name', 'party']


class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name']
    list_filter = ['election__categories']
    fields= ['name']


admin.site.register(Election, ElectionAdmin)
admin.site.register(Party, PartyAdmin)
admin.site.register(ElectoralList, ElectoralListAdmin)
admin.site.register(Category, CategoryAdmin)