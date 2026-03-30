
execute if score GAMEMODE time matches 1..2 run function wallwar:system/timer/main


scoreboard players add #recipe time 1
execute if score #recipe time matches 1200.. run function wallwar:recipe


execute as @e[type=!player] at @s run function wallwar:system/entity

scoreboard players add #clock time 1
execute if score #clock time matches 100.. run function wallwar:clock/main

scoreboard players add #build time 1
execute if score #build time matches 200.. run function wallwar:build/main

scoreboard players add #armor time 1
execute if score #armor time matches 100.. run function wallwar:armor/main

execute if score #wither_no_use time matches 1.. run scoreboard players remove #wither_no_use time 1
execute if score #wither_no_use time matches 1 run tellraw @a {"translate": "你感到莫名的压力消失了，建筑封锁已解除"}
execute if score #wither_no_use2 time matches 1.. run function wallwar:build/wither/no_use

execute if entity @a[tag=boss_command_user,tag=!boss_command_user_no] run function wallwar:boss/command/main

execute as @a at @s run function wallwar:system/playing
execute unless items entity @a weapon.mainhand enchanted_golden_apple[custom_data~{"death_fight_end":1b}] run function wallwar:system/end/back

execute if score GAMEMODE time matches 2..3 run function wallwar:system/timer/win_check


#execute as @a[scores={kill=1..}] run function wallwar:kill
#scoreboard players reset @a kill

