
scoreboard players set @s starter_path 2
scoreboard players reset @s choose_starter
loot give @s loot wallwar:starter/farm
xp set @s 5 levels
xp set @s 0 points
tellraw @s ["",{"translate":"[战墙] ","color":"gray"},{"translate":"已选择发育流派：种田","color":"green"}]

