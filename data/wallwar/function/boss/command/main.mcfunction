
scoreboard players operation command_timer display = #command_timer time
scoreboard players operation command_timer display /= 20 const
execute unless score GAME_PRO time matches 1 run scoreboard players remove #command_timer time 1
execute if score #command_timer time matches 200 as @a[tag=boss_command_user] at @s run function wallwar:boss/command/main_warn
execute unless score #command_timer time matches 1.. as @a[tag=boss_command_user] at @s run function wallwar:boss/command/give
#execute as @a[tag=boss_command_user] run

