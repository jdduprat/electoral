# Generated by Django 2.2 on 2019-08-11 16:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('candidates', '0015_category_order'),
    ]

    operations = [
        migrations.AddField(
            model_name='electorallist',
            name='order',
            field=models.IntegerField(default=0, verbose_name='Orden de Carga'),
        ),
        migrations.AddField(
            model_name='party',
            name='order',
            field=models.IntegerField(default=0, verbose_name='Orden de Carga'),
        ),
    ]
