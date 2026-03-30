

execute unless items entity @s armor.head #head_armor run return fail

item replace entity 0-0-0-0-1 container.0 from entity @s armor.head
execute store result score #unbreaking temp run data get entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:low_damage1" 1
execute store result score #damage temp run data get entity 0-0-0-0-1 item.components."minecraft:damage" 1
scoreboard players operation #damage temp -= #unbreaking temp
execute store result entity 0-0-0-0-1 item.components."minecraft:damage" int 1 run scoreboard players remove #damage temp 1
item replace entity @s armor.head from entity 0-0-0-0-1 container.0


stopsound @a[distance=..5] player item.armor.equip_diamond
stopsound @a[distance=..5] player item.armor.equip_chain
stopsound @a[distance=..5] player item.armor.equip_netherite
stopsound @a[distance=..5] player item.armor.equip_leather
stopsound @a[distance=..5] player item.armor.equip_iron
stopsound @a[distance=..5] player item.armor.equip_gold
stopsound @a[distance=..5] player item.armor.equip_generic