# -*- coding: utf-8 -*-

from django.contrib import admin
from django.db.models import Count

class HasSchoolsFilter(admin.SimpleListFilter):
    
    def lookups(self, request, model_admin):
        response = list()

        response.append((True, 'Si'))
        response.append((False, 'No'))

        return response

    title = u'Tiene Escuelas'

    parameter_name = 'has_school'

    def queryset(self, request, queryset):

        if self.value():
            has_school = self.value()
            
            if has_school == 'True':
                return queryset.annotate(num_school=Count('school__assigned_to')).filter(num_school__gt = 0)
            
            return queryset.annotate(num_school=Count('school__assigned_to')).filter(num_school = 0, school__isnull=True)
            
        return queryset