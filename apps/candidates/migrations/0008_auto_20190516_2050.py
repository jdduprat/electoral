# Generated by Django 2.2 on 2019-05-16 23:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('candidates', '0007_auto_20190516_2045'),
    ]

    operations = [
        migrations.AddField(
            model_name='election',
            name='parties',
            field=models.ManyToManyField(to='candidates.Party', verbose_name='Partidos'),
        ),
        migrations.AlterField(
            model_name='election',
            name='categories',
            field=models.ManyToManyField(to='candidates.Category', verbose_name='Categorías'),
        ),
    ]
