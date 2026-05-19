
scoreboard players set @s starter_path 4
scoreboard players reset @s choose_starter
loot give @s loot wallwar:starter/fish
xp set @s 5 levels
xp set @s 0 points
effect give @s minecraft:luck 1200 0 true
tellraw @s ["",{"translate":"[战墙] ","color":"gray"},{"translate":"已选择发育流派：钓鱼","color":"aqua"}]
