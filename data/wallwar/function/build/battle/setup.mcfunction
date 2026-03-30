
forceload add ~-6 ~-6 ~6 ~6
tellraw @a {"translate":"============================================","color":"white"}
tellraw @a [{"translate": "玩家","color":"red"},{"selector": "@p[gamemode=!spectator]"},{"translate":"建造出了奇观——地下领主的祭坛","color":"red"}]
tellraw @a [{"translate":"我呼唤了远古的存在，而他仁慈的回应了我。","color":"red"}]
tellraw @a {"translate":"============================================","color":"white"}
playsound block.end_portal.spawn player @a ~ ~ ~ 1 1 1
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 300 normal
tag @s add building_battle