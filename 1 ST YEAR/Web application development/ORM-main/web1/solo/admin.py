from django.contrib import admin
from .models import Library,LibraryAdmin
admin.site.register(Library,LibraryAdmin)