
execute unless items entity @s weapon.mainhand * run return fail

execute store result score #temp temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:wither_"
item replace entity 0-0-0-0-1 container.0 from entity @s weapon.mainhand
execute unless score #temp temp matches 10.. run scoreboard players add #temp temp 1
execute store result entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:wither_" int 1 run scoreboard players get #temp temp
item replace entity @s weapon.mainhand from entity 0-0-0-0-1 container.0
