
execute if entity @s[tag=wither_pickaxe] run return run scoreboard players add @s wither_health 10
execute if entity @s[tag=wither_user] run return run scoreboard players add @s wither_health 10
execute if entity @s[tag=wither_sword] run return run scoreboard players add @s wither_health 10
tag @s add wither_man
tellraw @a [{"translate": "<声音> ","color": "gray"},{"selector": "@s"},{"translate": " 成为了凋灵的信徒"}]
