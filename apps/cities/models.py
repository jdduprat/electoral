from django.db import models


# Create your models here.
class Province(models.Model):

    name = models.CharField(verbose_name=u'Nombre', blank=False, null=False, max_length=60)

    def __str__(self):
        return self.name
    

    class Meta:
        verbose_name = 'provincia'
        verbose_name_plural = 'provincias'


# Create your models here.
class Department(models.Model):

    name = models.CharField(verbose_name=u'Nombre', blank=False, null=False, max_length=60)
    province = models.ForeignKey(Province, on_delete=models.DO_NOTHING, blank=False, null=False, verbose_name='Provincia')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'departamento'
        verbose_name_plural = 'departamentos'


# Create your models here.
class City(models.Model):

    name = models.CharField(verbose_name=u'Nombre', blank=False, null=False, max_length=60)
    department = models.ForeignKey(Department, on_delete=models.DO_NOTHING, blank=False, null=False, verbose_name='Departamento')

    def __str__(self):
        return self.name
        
    class Meta:
        verbose_name = 'ciudad'
        verbose_name_plural = 'ciudades'