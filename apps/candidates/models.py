from django.db import models

class Category(models.Model):

    name = models.CharField(verbose_name=u'Nombre', blank=False, null=False, max_length=60)

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = u'categoría' 
        verbose_name_plural = u'categorías'


class Election(models.Model):
    description = models.CharField(verbose_name=u'Descripción', blank=True, null=True, max_length=120)
    date = models.DateField(verbose_name=u'Fecha')
    current = models.BooleanField(verbose_name=u'Vigente')
    categories = models.ManyToManyField(Category, blank=False, null=True, verbose_name=u'Categorías')
    
    def __str__(self):
        return self.description

    class Meta:
        verbose_name = u'elección'
        verbose_name_plural = u'elecciones'


class Party(models.Model):

    name = models.CharField(verbose_name=u'Nombre', blank=False, null=False, max_length=60)
    address = models.CharField(verbose_name=u'Dirección', blank=False, null=False, max_length=80)

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = 'partido'
        verbose_name_plural = 'partidos'


class ElectoralList(models.Model):

    name = models.CharField(verbose_name=u'Nombre', blank=False, null=False, max_length=80)
    party = models.ForeignKey(Party, on_delete=models.DO_NOTHING, blank=False, null=False, verbose_name=u'Partido')

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = 'lista'
        verbose_name_plural = 'listas'

