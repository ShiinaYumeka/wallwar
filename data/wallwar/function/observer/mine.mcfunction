
execute unless score GAME_PRO time matches 1 run return run kill @s

execute as @p[team=!sp,gamemode=!spectator] at 0-0-0-0-1 run function wallwar:observer/mine2

playsound entity.player.teleport block @a
particle witch ~ ~ ~ 0 0 0 0.05 20 normal @a
kill @s

