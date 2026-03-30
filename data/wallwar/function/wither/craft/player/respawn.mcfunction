
execute as @p[gamemode=!spectator,tag=wither_user] run tag @s add wither_user_respawn
item replace entity @s container.0 with air
