# Generated by Django 2.2 on 2019-05-31 01:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('candidates', '0010_electorallist_head'),
    ]

    operations = [
        migrations.AlterField(
            model_name='electorallist',
            name='head',
            field=models.CharField(default='', max_length=80, verbose_name='Cabecera'),
        ),
    ]
