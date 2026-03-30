
#execute as @p[gamemode=!spectator] run function wallwar:wither/craft/man/main
item replace entity @s container.0 with air

execute as @p[gamemode=!spectator] run function wallwar:wither/craft/man/main
scoreboard players add @e[type=item_frame,tag=building_wither,limit=1] wither_health 20
particle smoke ~ ~ ~ 1 1 1 1 100 normal
playsound entity.wither.hurt player @a ~ ~ ~ 1 2
