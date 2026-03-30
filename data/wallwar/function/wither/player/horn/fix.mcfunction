
item replace entity 0-0-0-0-1 container.0 from entity @s armor.head
execute store result score #damage temp run data get entity 0-0-0-0-1 item.components."minecraft:damage" 1
execute store result entity 0-0-0-0-1 item.components."minecraft:damage" int 1 run scoreboard players remove #damage temp 100
item replace entity @s armor.head from entity 0-0-0-0-1 container.0

item replace entity 0-0-0-0-1 container.0 from entity @s armor.chest
execute store result score #damage temp run data get entity 0-0-0-0-1 item.components."minecraft:damage" 1
execute store result entity 0-0-0-0-1 item.components."minecraft:damage" int 1 run scoreboard players remove #damage temp 100
item replace entity @s armor.chest from entity 0-0-0-0-1 container.0

item replace entity 0-0-0-0-1 container.0 from entity @s armor.legs
execute store result score #damage temp run data get entity 0-0-0-0-1 item.components."minecraft:damage" 1
execute store result entity 0-0-0-0-1 item.components."minecraft:damage" int 1 run scoreboard players remove #damage temp 100
item replace entity @s armor.legs from entity 0-0-0-0-1 container.0

item replace entity 0-0-0-0-1 container.0 from entity @s armor.feet
execute store result score #damage temp run data get entity 0-0-0-0-1 item.components."minecraft:damage" 1
execute store result entity 0-0-0-0-1 item.components."minecraft:damage" int 1 run scoreboard players remove #damage temp 100
item replace entity @s armor.feet from entity 0-0-0-0-1 container.0
