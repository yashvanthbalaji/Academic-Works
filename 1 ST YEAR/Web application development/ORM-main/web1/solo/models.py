from django.db import models
from django.contrib import admin
class Library(models.Model):
   book=models.CharField(max_length=30);
   bookid=models.IntegerField(primary_key=True);
   author=models.CharField(max_length=30);
   dept=models.CharField(max_length=30);
   publisher=models.CharField(max_length=30);
class LibraryAdmin(admin.ModelAdmin):
   list_display=('book','bookid','author','dept','publisher');