
scoreboard players set @s starter_path 1
scoreboard players reset @s choose_starter
loot give @s loot wallwar:starter/mine
xp set @s 24 levels
xp set @s 0 points
effect give @s minecraft:haste 1200 0 true
tellraw @s ["",{"translate":"[战墙] ","color":"gray"},{"translate":"已选择发育流派：挖矿","color":"gold"}]

give @s compass[custom_data={"mine_compass":1b,"wallwar_item":1b},minecraft:custom_name={"translate":"矿洞指南针","color":"light_purple","italic":false},lore=[{"translate":"按Q丢出后将自己随机传送至内Y<0的随机位置","color":"white","italic":false},{"translate":"只能在发育阶段使用","color":"white","italic":false},{"translate":"只能在发育阶段使用","color":"white","italic":false},{"translate":"*人走过的地方，就变成了路。","color":"gray","italic":false}]] 1
