
scoreboard players set @s starter_path 3
scoreboard players reset @s choose_starter
loot give @s loot wallwar:starter/axe
xp set @s 5 levels
xp set @s 0 points
tellraw @s ["",{"translate":"[战墙] ","color":"gray"},{"translate":"已选择发育流派：砍树","color":"dark_green"}]
