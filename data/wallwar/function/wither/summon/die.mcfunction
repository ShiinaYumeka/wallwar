
title @s title {"translate":"凋灵降临！","color":"dark_red"}
title @s subtitle {"translate":"毁灭他们……"}

tellraw @a [{"translate": "<声音> ","color": "gray"},{"selector": "@s"},{"translate": " 将自己的灵魂祭于吾之降临"}]

execute store result score #temp temp run data get entity @s Health 1
scoreboard players operation @s wither_health += #temp temp
scoreboard players operation #temp wither_health += @s wither_health
scoreboard players operation #temp wither_armor += @s wither_armor


execute if entity @s[tag=wither_man_nokill] run return run tellraw @s [{"translate": "*你感觉失去了什么，但是你好像还能控制自己的身体","color": "gray"}]


tp @s ~ -70 ~
kill @s
