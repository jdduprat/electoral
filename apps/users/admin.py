from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User
from .models import Usuario
from apps.places.models import School

class UsuarioInline(admin.StackedInline):
    model = Usuario
    can_delete = False
    verbose_name_plural = 'Otros Datos'
    fk_name = 'user'


class SchoolInline(admin.TabularInline):
    model = School.assigned_to.through
    verbose_name_plural = 'Escuelas Asignadas'
    verbose_name = 'Escuela'


class CustomUserAdmin(UserAdmin):
    inlines = (UsuarioInline, SchoolInline)
    list_display = ('username', 'email', 'first_name', 'last_name', 'is_staff', 'get_dni', 'get_tel')
    list_select_related = ('usuario', )

    def get_dni(self, instance):
            return instance.usuario.dni
    get_dni.short_description = 'DNI'

    def get_tel(self, instance):
            return instance.usuario.tel
    get_tel.short_description = u'Teléfono'

    def get_inline_instances(self, request, obj=None):
        if not obj:
            return list()
        return super(CustomUserAdmin, self).get_inline_instances(request, obj)


admin.site.unregister(User)
admin.site.register(User, CustomUserAdmin)