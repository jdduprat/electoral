from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User
from django.contrib.admin.helpers import ActionForm
from .models import Usuario
from apps.places.models import School
from django import forms

class UsuarioInline(admin.StackedInline):
    model = Usuario
    can_delete = False
    verbose_name_plural = 'Otros Datos'
    fk_name = 'user'


class SchoolInline(admin.TabularInline):
    model = School.assigned_to.through
    verbose_name_plural = 'Escuelas Asignadas'
    verbose_name = 'Escuela'


def resetPassword(self, request, queryset):
    count = 0
    for obj in queryset:
        #4 primeras letras del apellido y 3 ultimos digitos DNI
        new_password = obj.last_name[0:4] + str(obj.usuario.dni)[5:8]
        obj.set_password(new_password)
        obj.save()
        count += 1
    self.message_user(request, "Se actualizaron %s registros" % count )

resetPassword.short_description = "Crear contraseñas de los usuarios seleccionados"


class UpdateActionForm(ActionForm): 
    new_password = forms.CharField(label='Nueva Contraseña', max_length=30)


def change_password(self, request, queryset):
    new_password = request.POST['new_password']
    count = 0
    for obj in queryset:
        obj.set_password(new_password)
        obj.save()
        count += 1
    self.message_user(request, "Se actualizaron %s registros" % count )

change_password.short_description = 'Cambiar contraseñas de los usuarios seleccionados'


def active(self, request, queryset):
    rows_updated = queryset.update(is_active=True)
    if rows_updated == 1:
        message_bit = "1 usuario fue activado" 
    else:
        message_bit = "%s usuarios fueron activados" % rows_updated
    self.message_user(request, message_bit)

active.short_description = "Activar los usuarios seleccionados"


def unactive(self, request, queryset):
    rows_updated = queryset.update(is_active=False)
    if rows_updated == 1:
        message_bit = "1 usuario fue desactivado"
    else:
        message_bit = "%s usuarios fueron desactivados" % rows_updated
    self.message_user(request, message_bit)

unactive.short_description = "Desactivar los usuarios seleccionados"


class CustomUserAdmin(UserAdmin):
    inlines = (UsuarioInline, SchoolInline)
    list_filter = ('groups', 'is_active', 'is_staff', 'school') 
    list_display = ('username', 'email', 'first_name', 'last_name', 'is_staff', 'get_dni', 'get_tel')
    list_select_related = ('usuario', )
    actions = (active, unactive, resetPassword, change_password)
    action_form = UpdateActionForm

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