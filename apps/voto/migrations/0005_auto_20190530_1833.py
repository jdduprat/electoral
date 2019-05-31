# Generated by Django 2.2 on 2019-05-30 21:33

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('voto', '0004_auto_20190514_2338'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='voto',
            options={'permissions': (('can_read_assigned_schools', 'Solo puede leer escuelas que le están asignadas'),), 'verbose_name': 'voto', 'verbose_name_plural': 'Listado de Votos'},
        ),
        migrations.AlterModelOptions(
            name='votosummary',
            options={'verbose_name': 'Votos por Lista', 'verbose_name_plural': 'Votos por Listas'},
        ),
    ]
