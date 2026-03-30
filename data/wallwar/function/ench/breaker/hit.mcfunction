
execute unless entity @s[type=player] run return fail

execute store result score #temp temp run random value 1..100

execute if score #temp temp matches 1..10 run function wallwar:ench/breaker/head
execute if score #temp temp matches 11..20 run function wallwar:ench/breaker/chest
execute if score #temp temp matches 21..30 run function wallwar:ench/breaker/legs
execute if score #temp temp matches 31..40 run function wallwar:ench/breaker/feet

#stopsound @a[distance=..5] player item.armor.equip_diamond
#stopsound @a[distance=..5] player item.armor.equip_chain
#stopsound @a[distance=..5] player item.armor.equip_netherite
#stopsound @a[distance=..5] player item.armor.equip_leather
#stopsound @a[distance=..5] player item.armor.equip_iron
#stopsound @a[distance=..5] player item.armor.equip_gold
#stopsound @a[distance=..5] player item.armor.equip_generic