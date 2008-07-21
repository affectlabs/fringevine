from django.db import models

# Create your models here.
   
class Company(models.Model):
   name = models.CharField(max_length=255)

class Genre(models.Model):
   name = models.CharField(max_length=255)

class Venue(models.Model):
   name = models.CharField(max_length=255)
   location = models.CharField(max_length=255)
   gridref = models.CharField(max_length=10)
   phone = models.IntegerField()
   edfringe_id = models.IntegerField()

class Show(models.Model):
   name = models.CharField(max_length=255)
   company = models.ForeignKey(Company)
   genre = models.ForeignKey(Genre)
   venue = models.ForeignKey(Venue)
   desc = models.TextField('Blurb')
   date_from = models.DateTimeField('Start date')
   date_to   = models.DateTimeField('End date')
   edfringe_id = models.IntegerField()
   thumbsup = models.DecimalField(max_digits=5,decimal_places=3)
