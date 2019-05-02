# Generated by Django 2.2 on 2019-04-28 05:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('places', '0004_auto_20190428_0157'),
    ]

    operations = [
        migrations.AlterField(
            model_name='table',
            name='elctors_qty',
            field=models.IntegerField(blank=True, null=True, verbose_name='N° Electores'),
        ),
        migrations.AlterField(
            model_name='table',
            name='school',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='places.School', verbose_name='Escuela'),
        ),
    ]
