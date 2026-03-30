
execute unless items entity @s armor.legs #enchantable/armor run return fail
execute if items entity @s armor.legs #enchantable/armor[unbreakable] run return fail

item replace entity 0-0-0-0-1 container.0 from entity @s armor.legs
execute on attacker store result score #pervade temp run function wallwar:ench/pervade/atker
execute store result score #unbreaking temp run data get entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:unbreaking" 2
execute store result score #breaking temp run data get entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:breaking" 2
execute store result score #damage temp run data get entity 0-0-0-0-1 item.components."minecraft:damage" 1
scoreboard players operation #damage temp += #breaking temp
scoreboard players operation #damage temp += #pervade temp
scoreboard players operation #damage temp -= #unbreaking temp
execute store result entity 0-0-0-0-1 item.components."minecraft:damage" int 1 run scoreboard players add #damage temp 16
item replace entity @s armor.legs from entity 0-0-0-0-1 container.0
