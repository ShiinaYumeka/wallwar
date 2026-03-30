
execute as 0-0-0-0-1 at @s run function wallwar:death_fight/ocean/main

execute if score @s tid matches 4 run team join red @e[tag=ocean_bob]
execute if score @s tid matches 1 run team join blue @e[tag=ocean_bob]
execute if score @s tid matches 3 run team join yellow @e[tag=ocean_bob]
execute if score @s tid matches 2 run team join green @e[tag=ocean_bob]

tellraw @a {"translate":"=======================","color":"white"}
tellraw @a [{"translate":"<鲍勃> 感受海洋的力量！！","color":"white"}]
tellraw @a {"translate":"=======================","color":"white"}

execute as @a[tag=FIGHT] run function wallwar:build/ocean/effect

scoreboard players set DeathFight time -1
scoreboard players display numberformat DeathFight display fixed {"translate":"海洋","color": "dark_aqua"}
execute at 0-0-0-0-1 positioned ~ 315 ~ run spreadplayers ~ ~ 3 15 under 315 false @e[tag=wither_skeleton]