from django.contrib import admin
from .models import Province, Department, City


class ProvinceAdmin(admin.ModelAdmin):    
    list_display = ['name']


class DepartmentAdmin(admin.ModelAdmin): 
    list_display = ['name', 'province']
    list_filter = ['province']


class CityAdmin(admin.ModelAdmin): 
    list_display = ['name', 'department']
    list_filter = ['department__province', 'department']


admin.site.register(Province, ProvinceAdmin)
admin.site.register(Department, DepartmentAdmin)
admin.site.register(City, CityAdmin)