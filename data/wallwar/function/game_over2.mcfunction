
gamerule keep_inventory true

effect give @a minecraft:instant_health 1 20
effect give @a minecraft:saturation 5 20 true

effect clear @a

function wallwar:system/bossbar/clear

#kill @e[type=item]

execute as 0-0-0-0-1 at @s run tp @a ~ 252 ~

scoreboard players set GAMEMODE time 0
scoreboard players set GAME_PRO time 0
scoreboard players reset #Hunter_MODE time
scoreboard players reset #hunter_freeze time
scoreboard players reset #hunter_freeze_left time
bossbar set wallwar:hunter_freeze visible false
tag @a remove hunter_player
tag @a remove runner_player
recipe take @a wallwar:hunter/eye

gamemode survival @a

team join sp @a

#clear @a