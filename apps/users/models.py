from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver


class Usuario(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    dni = models.CharField(max_length=10, null=False, blank=False)
    tel = models.CharField(max_length=20, null=False, blank=False)

    def __str__(self):
        return self.user.username


@receiver(post_save, sender=User)
def create_or_update_user_profile(sender, instance, created, **kwargs):
    try:
        Usuario.objects.get(user=instance)
    except Usuario.DoesNotExist:        
        pass
        #Usuario.objects.create(user=instance)
