from django import template

register = template.Library()

@register.simple_tag
def multiply2(qty, unitCost):
    return round(qty * unitCost, 2)

@register.simple_tag
def multiply3(qty, unitCost, discount):
    return round(qty * unitCost * discount, 2)

@register.simple_tag
def substract(minuend, substrahend):
    return minuend - substrahend
