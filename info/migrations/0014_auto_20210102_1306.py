# Generated by Django 3.1.4 on 2021-01-02 13:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('info', '0013_berita_fotojudul'),
    ]

    operations = [
        migrations.AlterField(
            model_name='berita',
            name='FotoJudul',
            field=models.FileField(upload_to=''),
        ),
    ]
