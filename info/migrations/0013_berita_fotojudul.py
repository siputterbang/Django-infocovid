# Generated by Django 3.1.4 on 2021-01-02 12:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('info', '0012_delete_uploaddocument'),
    ]

    operations = [
        migrations.AddField(
            model_name='berita',
            name='FotoJudul',
            field=models.ImageField(default='', upload_to='img/'),
        ),
    ]
