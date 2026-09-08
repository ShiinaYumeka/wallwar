
execute unless items entity @s weapon.offhand yellow_dye[enchantment_glint_override=true] run return fail

item replace entity 0-0-0-0-1 container.0 from entity @s weapon.offhand
data remove entity 0-0-0-0-1 item.components."minecraft:enchantment_glint_override"
item replace entity @s weapon.offhand from entity 0-0-0-0-1 container.0
