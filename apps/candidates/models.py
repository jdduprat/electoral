from django.db import models

class Category(models.Model):

    name = models.CharField(verbose_name=u'Nombre', blank=False, null=False, max_length=60)
    is_listless = models.BooleanField(verbose_name=u'Sin Lista', blank=False, null=False, default=False)

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = u'categoría' 
        verbose_name_plural = u'categorías'


class Party(models.Model):

    name = models.CharField(verbose_name=u'Nombre', blank=False, null=False, max_length=60)
    address = models.CharField(verbose_name=u'Dirección', blank=False, null=False, max_length=80)

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = 'partido'
        verbose_name_plural = 'partidos'


class Election(models.Model):
    description = models.CharField(verbose_name=u'Descripción', blank=True, null=True, max_length=120)
    date = models.DateField(verbose_name=u'Fecha')
    current = models.BooleanField(verbose_name=u'Vigente')
    categories = models.ManyToManyField(Category, blank=False, verbose_name=u'Categorías')
    parties = models.ManyToManyField(Party, verbose_name=u'Partidos')

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
    
    def __str__(self):
        return self.name + ' - ' + self.head
    
    class Meta:
        verbose_name = 'lista'
        verbose_name_plural = 'listas'

