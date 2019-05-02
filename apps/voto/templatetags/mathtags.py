from django import template

register = template.Library()

@register.filter
def percentof(part, whole):
    try:
        return "%d%%" % (float(part) / whole * 100)
    except (ValueError, ZeroDivisionError):
        return ""