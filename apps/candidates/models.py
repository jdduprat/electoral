from django.db import models
from colorfield.fields import ColorField
from apps.cities.models import City


class Category(models.Model):

    name = models.CharField(verbose_name=u'Nombre', blank=False, null=False, max_length=60)
    is_listless = models.BooleanField(verbose_name=u'Sin Lista', blank=False, null=False, default=False)
    order = models.IntegerField(verbose_name=u'Orden de Carga', blank=False, null=False, default=0)

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = u'categoría' 
        verbose_name_plural = u'categorías'


class Party(models.Model):

    name = models.CharField(verbose_name=u'Nombre', blank=False, null=False, max_length=60)
    address = models.CharField(verbose_name=u'Dirección', blank=False, null=False, max_length=80)
    city = models.ForeignKey(City, on_delete=models.DO_NOTHING, blank=False, null=True, verbose_name='Ciudad')
    color = ColorField(default='#FF0000')
    order = models.IntegerField(verbose_name=u'Orden de Carga', blank=False, null=False, default=0)

    def __str__(self):
        return self.name
    
    def __charge_order(self):
        return '%s %s' % (self.order, self.name)
    charge_order = property(__charge_order)

    class Meta:
        verbose_name = 'partido'
        verbose_name_plural = 'partidos'
        ordering = ['order', 'name']


class Election(models.Model):
    description = models.CharField(verbose_name=u'Descripción', blank=True, null=True, max_length=120)
    date = models.DateField(verbose_name=u'Fecha')
    year = models.IntegerField(verbose_name=u'Año', blank=False, null=False, default=2000)
    current = models.BooleanField(verbose_name=u'Vigente')
    categories = models.ManyToManyField(Category, blank=False, verbose_name=u'Categorías')
    parties = models.ManyToManyField(Party, verbose_name=u'Partidos')

    def save(self, *args, **kwargs):
        if self.current:
            Election.objects.all().update(current=False)
        return super(Election, self).save( *args, **kwargs)

    def __str__(self):
        return self.description

    class Meta:
        verbose_name = u'elección'
        verbose_name_plural = u'elecciones'


class ElectoralList(models.Model):

    name = models.CharField(verbose_name=u'Nombre', blank=False, null=False, max_length=80)
    party = models.ForeignKey(Party, on_delete=models.DO_NOTHING, blank=True, null=True, verbose_name=u'Partido')
    current = models.BooleanField(verbose_name=u'Vigente', blank=False, null=False, default=True)
    add_to_best = models.BooleanField(verbose_name=u'Sumariza al Ganador', blank=False, null=False, default=False, 
                    help_text="Si está activado este campo, los votos de esta lista sumarizarán en los reportes" +
                             "al partido con mayor cantidad de Votos")
    head = models.CharField(verbose_name=u'Cabecera', blank=False, null=False, max_length=80, default='')
    order = models.IntegerField(verbose_name=u'Orden de Carga', blank=False, null=False, default=0)
    
    def __str__(self):
        return self.name + ' - ' + self.head

    def __charge_order(self):
        return '%s %s' % (self.order, self.name)
    charge_order = property(__charge_order)
    
    class Meta:
        verbose_name = 'lista'
        verbose_name_plural = 'listas'
        ordering = ['order', 'name']

