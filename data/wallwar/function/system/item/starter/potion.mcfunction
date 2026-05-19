
scoreboard players set @s starter_path 5
scoreboard players reset @s choose_starter
loot give @s loot wallwar:starter/potion
xp set @s 5 levels
xp set @s 0 points
effect give @s minecraft:haste 1200 0 true
tellraw @s ["",{"translate":"[战墙] ","color":"gray"},{"translate":"已选择发育流派：炼药/召唤","color":"dark_red"}]
