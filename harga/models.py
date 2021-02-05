from django.db import models

# Create your models here.
class Harga(models.Model):
        daerah = models.CharField(max_length=100,default="")
        hargaSwab= models.DecimalField(max_digits=6, decimal_places=0)
        hargaRapid= models.DecimalField(max_digits=6, decimal_places=0)


        def __str__(self) :
            return "{}".format(self.id,self.daerah)