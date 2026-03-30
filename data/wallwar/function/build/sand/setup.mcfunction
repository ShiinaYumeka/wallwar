
forceload add ~-3 ~-3 ~3 ~3


tellraw @a {"translate":"============================================","color":"white"}
tellraw @a [{"translate": "玩家","color":"yellow"},{"selector": "@p[gamemode=!spectator]"},{"translate":"建造出了奇观——金字塔","color":"yellow"}]
tellraw @a [{"translate":"埃及奴隶：对，是外星人做的，对。","color":"gray"}]
tellraw @a {"translate":"============================================","color":"white"}
playsound block.end_portal.spawn player @a ~ ~ ~ 1 1 1
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 300 normal
tag @s add building_sand
