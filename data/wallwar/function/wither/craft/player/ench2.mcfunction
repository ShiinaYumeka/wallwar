
tag @s add wither_man_nokill

tellraw @s [{"translate": "*你献出了足够的祭品，你能感受到他的喜悦。","color": "gray"}]

execute store result score #temp temp run data get entity @s equipment.chest.components."minecraft:enchantments"."minecraft:protection"

scoreboard players add #temp temp 1
execute if score #temp temp matches 5.. run scoreboard players set #temp temp 4

item replace entity 0-0-0-0-1 container.0 from entity @s armor.feet
execute store result entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:protection" int 1 run scoreboard players get #temp temp
item replace entity @s armor.feet from entity 0-0-0-0-1 container.0

item replace entity 0-0-0-0-1 container.0 from entity @s armor.legs
execute store result entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:protection" int 1 run scoreboard players get #temp temp
item replace entity @s armor.legs from entity 0-0-0-0-1 container.0

item replace entity 0-0-0-0-1 container.0 from entity @s armor.chest
execute store result entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:protection" int 1 run scoreboard players get #temp temp
item replace entity @s armor.chest from entity 0-0-0-0-1 container.0
