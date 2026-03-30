
gamerule keep_inventory true

effect give @a minecraft:instant_health 1 20
effect give @a minecraft:saturation 5 20 true

effect clear @a

function wallwar:system/bossbar_clear

#kill @e[type=item]

execute as 0-0-0-0-1 at @s run tp @a ~ 252 ~

scoreboard players set GAMEMODE time 0
scoreboard players set GAME_PRO time 0

gamemode survival @a

team join sp @a

#clear @a