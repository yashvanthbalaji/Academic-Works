# Ex02 Django ORM Web Application
## Date: 01.02.2024

## AIM
To develop a Django application to store and retrieve data from a Book database using Object Relational Mapping(ORM).

## Entity Relationship Diagram

![alt text](<Screenshot 2024-02-29 140039.png>)

## DESIGN STEPS

### STEP 1:
Clone the problem from GitHub

### STEP 2:
Create a new app in Django project

### STEP 3:
Enter the code for admin.py and models.py

### STEP 4:
Execute Django admin and create details for 10 books

## PROGRAM
```
from django.db import models
from django.contrib import admin
class Library(models.Models):
   book=models.CharField(max_length=30);
   bookid=models.IntegerField(primary_key=True);
   author=models.CharField(max_length=30);
   dept=models.CharField(max_length=30);
   publisher=models.CharField(max_length=30);
class LibraryAdmin(admin.ModelAdmin):
   list_display=('book','bookid','author','dept','publisher');

from django.contrib import admin
from .models import Library,LibraryAdmin
admin.site.register(Library,LibraryAdmin)
```
## OUTPUT

![alt text](<Screenshot 2024-02-27 145224.png>)

## RESULT
Thus the program for creating a database using ORM hass been executed successfully
