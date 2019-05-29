from django.db import models
from apps.cities.models import City
from django.conf import settings

class School(models.Model):

    name = models.CharField(verbose_name=u'Escuela', blank=False, null=False, max_length=60)
    address = models.CharField(verbose_name=u'Dirección', blank=False, null=False, max_length=80)
    city = models.ForeignKey(City, on_delete=models.DO_NOTHING, blank=False, null=True, verbose_name='Ciudad')
    assigned_to = models.ManyToManyField(settings.AUTH_USER_MODEL, blank=False, verbose_name=u'Asignada a')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'escuela'
        verbose_name_plural = 'escuelas'


class Table(models.Model):

    name = models.IntegerField(verbose_name=u'Número', blank=False, null=False)
    school = models.ForeignKey(School, on_delete=models.DO_NOTHING, blank=False, null=False, verbose_name=u'Escuela')
    elctors_qty = models.IntegerField(verbose_name='N° Electores', blank=True, null=True)
    closed = models.BooleanField(verbose_name='Cerrada', blank=False, null=False, default=False)
    closed_by = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, blank=True, null=True, verbose_name=u'Cerrada por ', related_name='closed_by')
    reopen_by = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, blank=True, null=True, verbose_name=u'Re abierta por ', related_name='reopen_by')

    def __str__(self):
        return str(self.name)

    class Meta:
        verbose_name = 'mesa'
        verbose_name_plural = 'mesas'