from django.db import models
from apps.candidates.models import Election, Category, ElectoralList
from apps.places.models import Table
from django.conf import settings


class Voto(models.Model):
    created_by = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, verbose_name=u'Creado por')
    created_date = models.DateField(verbose_name=u'Fecha Creación', auto_now=True)

    election = models.ForeignKey(Election, on_delete=models.CASCADE, blank=False, null=False, verbose_name=u'elección')
    table = models.ForeignKey(Table, on_delete=models.CASCADE, blank=False, null=False, verbose_name=u'mesa')
    category = models.ForeignKey(Category, on_delete=models.CASCADE, blank=False, null=False, verbose_name=u'categoría')
    electoral_list = models.ForeignKey(ElectoralList, on_delete=models.CASCADE, blank=True, null=True, verbose_name=u'lista') 
    quantity = models.IntegerField(blank=False, null=False,verbose_name=u'cantidad')
    
    def __str__(self):
        return 'Voto %s %s %s' % (self.table, self.category, self.electoral_list)
        
    class Meta:
        verbose_name = 'voto'
        verbose_name_plural = 'Listado de Votos'
        permissions = (
            ('can_read_assigned_schools', u'Solo puede leer escuelas que le están asignadas'),
        )


class VotoSummary(Voto):
    class Meta:
        proxy = True
        verbose_name = 'Votos por Lista'
        verbose_name_plural = 'Votos por Listas'


class VotoCharge(Voto):
    class Meta:
        proxy = True
        verbose_name = 'Control de Carga de Votos'
        verbose_name_plural = 'Control de Carga de Votos'


class VotoGraphs(Voto):
    class Meta:
        proxy = True
        verbose_name = 'Resultados en Gráficos'
        verbose_name_plural = 'Resultados en Gráficos'