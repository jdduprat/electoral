# Generated by Django 2.2 on 2019-05-31 17:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usuario',
            name='dni',
            field=models.CharField(max_length=9),
        ),
    ]
