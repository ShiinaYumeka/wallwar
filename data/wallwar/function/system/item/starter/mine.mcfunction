
scoreboard players set @s starter_path 1
scoreboard players reset @s choose_starter
loot give @s loot wallwar:starter/mine
xp set @s 24 levels
xp set @s 0 points
effect give @s minecraft:haste 1200 0 true
tellraw @s ["",{"translate":"[战墙] ","color":"gray"},{"translate":"已选择发育流派：挖矿","color":"gold"}]
