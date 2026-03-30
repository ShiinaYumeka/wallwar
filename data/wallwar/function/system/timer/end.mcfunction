
execute if score #wither_no_use2 time matches 200.. run scoreboard players set #wither_no_use2 time 205
execute as @e[type=item_frame,tag=building_ocean] at @s if entity @s[y=60,dy=260] positioned ~ ~-1 ~ run function wallwar:build/ocean/food

execute as @e[tag=wither,tag=wither_skill_player] at @s run function wallwar:wither/skill/player/use

execute if score GAME_PRO time matches 1 run execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient player @s
execute if score GAME_PRO time matches 1 run return run function wallwar:battle_start

execute if score GAME_PRO time matches 2 run return run function wallwar:circle_1

execute if score GAME_PRO time matches 3 run return run function wallwar:circle_2


execute if score GAME_PRO time matches 4 run execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient player @s ~ ~ ~ 1 2
execute if score GAME_PRO time matches 4 run return run function wallwar:death_fight

execute if score GAME_PRO time matches 5 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 2
execute if score GAME_PRO time matches 5 run return run function wallwar:death_fight2

execute if score GAME_PRO time matches 6 run execute as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 1 2
execute if score GAME_PRO time matches 6 run return run function wallwar:dead_line

execute if score GAME_PRO time matches 7 run execute as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 1 2
execute if score GAME_PRO time matches 7 run return run function wallwar:dead_line2

execute if score GAME_PRO time matches 8..9 run execute as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 1 2
execute if score GAME_PRO time matches 8..9 run return run function wallwar:dead_line3