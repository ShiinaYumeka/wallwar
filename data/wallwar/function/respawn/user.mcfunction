

effect give @s regeneration 1 10 true
effect give @s resistance 1 4 true

execute if entity @a[tag=respawn_target] run tellraw @a [{"translate": "[战墙] "},{"selector": "@a[tag=respawn_target]"},{"translate": "在"},{"selector": "@s"},{"translate": "的帮助下打赢复活赛了！"}]
