
execute unless items entity @s armor.chest #enchantable/armor run return fail
execute if items entity @s armor.chest #enchantable/armor[unbreakable] run return fail
execute if items entity @s armor.chest #enchantable/armor[damage~{durability:{max:264}}] run return fail

item replace entity 0-0-0-0-1 container.0 from entity @s armor.chest
execute store result score #breaker temp run function wallwar:ench/breaker/atker
execute store result score #unbreaking temp run data get entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:unbreaking" 2
execute store result score #breaking temp run data get entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:breaking" 2
execute store result score #damage temp run data get entity 0-0-0-0-1 item.components."minecraft:damage" 1
scoreboard players operation #damage temp += #breaking temp
scoreboard players operation #damage temp += #breaker temp
scoreboard players operation #damage temp -= #unbreaking temp
execute store result entity 0-0-0-0-1 item.components."minecraft:damage" int 1 run scoreboard players add #damage temp 12
item replace entity @s armor.chest from entity 0-0-0-0-1 container.0
