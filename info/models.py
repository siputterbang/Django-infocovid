from django.db import models
import os
from uuid import uuid4


def path_and_rename(instance, filename):
    upload_to = ''
    ext = filename.split('.')[-1]
    # get filename
    if instance.pk:
        filename = '{}.{}'.format(instance.pk, ext)
    else:
        # set filename as random string
        filename = '{}.{}'.format(uuid4().hex, ext)
    # return the whole path to the file
    return os.path.join(upload_to, filename)

# Create your models here.
class Berita(models.Model):
    
    judul = models.CharField(max_length=20,default='')
    isi = models.TextField(default="")
    FotoJudul = models.ImageField(upload_to=path_and_rename)

    def __str__(self) :
        return "{}.{}".format(self.id,self.judul)

