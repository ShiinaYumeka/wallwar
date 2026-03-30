
gamemode spectator @s

title @s title {"translate":"你失败了"}
title @s subtitle {"translate":"游戏还没有结束"}

tellraw @a [{"translate":"[战墙] "},{"selector":"@s"},{"translate":" 归于凋零！","color":"white"}]

tag @s remove FIGHT
tag @s remove wither_player


scoreboard players reset @a kill