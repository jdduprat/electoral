# Generated by Django 2.2 on 2019-05-29 01:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('places', '0006_school_assigned_to'),
    ]

    operations = [
        migrations.AddField(
            model_name='table',
            name='closed',
            field=models.BooleanField(default=False, verbose_name='Cerrada'),
        ),
    ]
