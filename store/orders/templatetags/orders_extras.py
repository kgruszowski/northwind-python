from django import template

register = template.Library()

@register.simple_tag
def multiply(qty, unitCost):
    return qty * unitCost
