from django.db import models
import datetime

# Create your models here.
class DataPasien(models.Model):
        daerah = models.CharField(max_length=100,default="")
        P_Positif= models.DecimalField(max_digits=6, decimal_places=0)
        P_Meninggal= models.DecimalField(max_digits=6, decimal_places=0)
        P_Sembuh= models.DecimalField(max_digits=6, decimal_places=0)
        datawaktu = models.DateTimeField(auto_now_add=True) 

        def __str__(self) :
            return "{}.{}".format(self.id,self.daerah)