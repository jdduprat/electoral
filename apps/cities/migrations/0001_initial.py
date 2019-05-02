# Generated by Django 2.2 on 2019-04-27 23:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Province',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=60, verbose_name='Nombre')),
            ],
            options={
                'verbose_name': 'provincia',
                'verbose_name_plural': 'provincias',
            },
        ),
        migrations.CreateModel(
            name='Department',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=60, verbose_name='Nombre')),
                ('province', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='cities.Province')),
            ],
            options={
                'verbose_name': 'departamento',
                'verbose_name_plural': 'departamentos',
            },
        ),
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=60, verbose_name='Nombre')),
                ('department', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='cities.Department')),
            ],
            options={
                'verbose_name': 'ciudad',
                'verbose_name_plural': 'ciudades',
            },
        ),
    ]
