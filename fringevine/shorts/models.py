from django.db import models
from datetime import datetime
from django.newforms import ModelForm
from django import newforms as forms

# Create your models here.
   
class Company(models.Model):
   name = models.CharField(max_length=255)
   class Admin:
      pass
   def __unicode__(self):
      return self.name
   class Meta:
      verbose_name_plural = "Companies"

class Genre(models.Model):
   name = models.CharField(max_length=255)
   class Admin:
      pass
   def __unicode__(self):
      return self.name

class Venue(models.Model):
   name = models.CharField(max_length=255)
   location = models.CharField(max_length=255, blank=True, null=True)
   gridref = models.CharField(max_length=10,blank=True, null=True)
   phone = models.IntegerField(blank=True, null=True)
   edfringe_id = models.IntegerField(blank=True, null=True)
   class Admin:
      pass
   def __unicode__(self):
      return self.name

class Show(models.Model):
   name = models.CharField(max_length=255)
   company = models.ForeignKey(Company)
   genre = models.ForeignKey(Genre)
   venue = models.ForeignKey(Venue)
   desc = models.TextField('Blurb', blank=True, null=True)
   date_from = models.DateTimeField('Start date', blank=True, null=True)
   date_to   = models.DateTimeField('End date', blank=True, null=True)
   edfringe_id = models.IntegerField()
   thumbsup = models.DecimalField(max_digits=5,decimal_places=3)
   class Admin:
      pass
   def __unicode__(self):
      return self.name

class Author(models.Model):
   name = models.CharField(max_length=255)
   IP = models.IPAddressField(blank=True, null=True)
   login = models.CharField(max_length=50, blank=True, null=True)
   pass_hash = models.CharField('Password hash',max_length=50,blank=True, null=True)
   source = models.CharField(max_length=50, blank=True, null=True)
   url = models.CharField(max_length=255, blank=True, null=True)
   sms = models.IntegerField(blank=True, null=True)
   class Admin:
      pass
   def __unicode__(self):
      return self.name

class Short(models.Model):
   author = models.ForeignKey(Author)
   text = models.CharField(max_length=200)
   show = models.ForeignKey(Show)
   source = models.CharField(max_length=255, blank=True, null=True)
   date = models.DateTimeField(default=datetime.now)
   thumbsup = models.DecimalField(max_digits=5,decimal_places=3)
   def __unicode__(self):
	  return self.text
   class Admin: 
      pass

class ShortInputForm(ModelForm):
	class Meta:
		model = Short
		fields = ('text')
		
class SearchForm(forms.Form):
	query = forms.CharField(label='Query',max_length=255)