# Generated by Django 2.2 on 2019-05-31 17:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_auto_20190531_1456'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usuario',
            name='dni',
            field=models.CharField(max_length=10),
        ),
    ]