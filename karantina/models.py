from django.db import models

# Create your models here.
class RujukanKarantina(models.Model):
    Kabupaten = models.CharField(max_length=255,default='')
    kecamatan = models.CharField(max_length=255,default='')
    namaRS = models.CharField(max_length=255,default='')
    namaTempatKarantina = models.CharField(max_length=255,default='')

def __str__(self):
    return "{}","{}".format(self.id,self.daerah)
