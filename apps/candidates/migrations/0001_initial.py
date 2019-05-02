# Generated by Django 2.2 on 2019-04-26 23:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Election',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.CharField(blank=True, max_length=120, null=True, verbose_name='Descripción')),
                ('date', models.DateField(verbose_name='Fecha')),
                ('current', models.BooleanField(verbose_name='Vigente')),
            ],
            options={
                'verbose_name': 'elección',
                'verbose_name_plural': 'elecciones',
            },
        ),
        migrations.CreateModel(
            name='Party',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=60, verbose_name='Nombre')),
                ('address', models.CharField(max_length=80, verbose_name='Dirección')),
            ],
            options={
                'verbose_name': 'partido',
                'verbose_name_plural': 'partidos',
            },
        ),
        migrations.CreateModel(
            name='ElectoralList',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=80, verbose_name='Nombre')),
                ('party', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='partido', to='candidates.Party')),
            ],
            options={
                'verbose_name': 'lista',
                'verbose_name_plural': 'listas',
            },
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=60, verbose_name='Nombre')),
                ('election', models.ManyToManyField(related_name='elección', to='candidates.Election')),
            ],
            options={
                'verbose_name': 'categoría',
                'verbose_name_plural': 'categorías',
            },
        ),
    ]
