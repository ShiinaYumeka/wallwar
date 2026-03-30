
execute unless items entity @s armor.feet #enchantable/armor run return fail
execute if items entity @s armor.feet #enchantable/armor[unbreakable] run return fail

item replace entity 0-0-0-0-1 container.0 from entity @s armor.feet
execute store result score #damage temp run data get entity 0-0-0-0-1 item.components."minecraft:damage" 1
execute unless score #damage temp matches 150.. run scoreboard players operation #damage temp += #temp temp
execute store result entity 0-0-0-0-1 item.components."minecraft:damage" int 1 run scoreboard players get #damage temp
item replace entity @s armor.feet from entity 0-0-0-0-1 container.0
