# Generated by Django 3.1.4 on 2021-01-02 07:57

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('info', '0007_berita_fotojudul'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='berita',
            name='fotojudul',
        ),
    ]
