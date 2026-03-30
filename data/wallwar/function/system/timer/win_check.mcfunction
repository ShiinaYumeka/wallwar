
execute as @r[tag=FIGHT,team=red] at @s run scoreboard players add TEAM time 1
execute as @r[tag=FIGHT,team=blue] at @s run scoreboard players add TEAM time 1
execute as @r[tag=FIGHT,team=green] at @s run scoreboard players add TEAM time 1
execute as @r[tag=FIGHT,team=yellow] at @s run scoreboard players add TEAM time 1

execute if score TEAM time matches 1 unless entity @e[type=wither,tag=wither] run scoreboard players set GAMEMODE time 3
execute if score TEAM time matches 0 if entity @e[type=wither,tag=wither] run scoreboard players set GAMEMODE time 3

execute if score GAMEMODE time matches 3 run scoreboard players add OVER time 1
execute if score OVER time matches 10 run function wallwar:game_over

scoreboard players set TEAM time 0

