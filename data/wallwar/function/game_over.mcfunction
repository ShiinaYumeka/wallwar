


#effect give @a minecraft:instant_health 1 20
#effect give @a minecraft:saturation 5 20 true

effect clear @a wither
effect clear @a poison

#function wallwar:system/bossbar/clear

#kill @e[tag=item]

#execute as 0-0-0-0-1 at @s run tp @a ~ 252 ~

scoreboard players set GAMEMODE time 0

#gamemode survival @a

#team join sp @a

#clear @a
playsound minecraft:entity.firework_rocket.twinkle player @a


tellraw @a [{"translate":"------===========","color":"white"},{"translate":"游戏结束","color":"green"},{"translate":"===========------","color":"white"}]



execute if entity @p[tag=FIGHT,team=red] run tag @a[team=red] add FIGHT
execute if entity @p[tag=FIGHT,team=blue] run tag @a[team=blue] add FIGHT
execute if entity @p[tag=FIGHT,team=yellow] run tag @a[team=yellow] add FIGHT
execute if entity @p[tag=FIGHT,team=green] run tag @a[team=green] add FIGHT
execute if entity @e[tag=wither] run tellraw @a [{"translate":"获胜者："},{"selector":"@e[tag=wither]"}]
execute unless entity @e[tag=wither] run tellraw @a [{"translate":"获胜者："},{"selector":"@a[tag=FIGHT,team=!sp]"}]


tellraw @a [{"translate":"------===========","color":"white"},{"translate":"========","color":"white"},{"translate":"===========------","color":"white"}]


tag @a remove FIGHT
tag @a remove hunter_player
tag @a remove runner_player
recipe take @a wallwar:hunter/eye

scoreboard players reset #Hunter_MODE time
scoreboard players reset #hunter_freeze time
scoreboard players reset #hunter_freeze_left time
bossbar set wallwar:hunter_freeze visible false

kill @e[tag=wither]