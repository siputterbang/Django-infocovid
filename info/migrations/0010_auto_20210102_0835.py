# Generated by Django 3.1.4 on 2021-01-02 08:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('info', '0009_uploaddocument'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='uploaddocument',
            name='uploaded_at',
        ),
        migrations.AlterField(
            model_name='uploaddocument',
            name='document',
            field=models.FileField(default='', upload_to='berita/'),
        ),
    ]