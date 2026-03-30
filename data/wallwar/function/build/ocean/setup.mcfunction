
forceload add ~-3 ~-3 ~3 ~3
tellraw @a {"translate":"============================================","color":"white"}
tellraw @a [{"translate": "玩家","color":"blue"},{"selector": "@p[gamemode=!spectator]"},{"translate":"建造出了奇观——海神祭坛","color":"blue"}]
tellraw @a [{"selector": "@p"},{"translate":"昨天在群内发言最多，抢走了龙王称号","color":"gray"}]
tellraw @a {"translate":"============================================","color":"white"}
playsound block.end_portal.spawn player @a ~ ~ ~ 1 1 1
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 300 normal
tag @s add building_ocean