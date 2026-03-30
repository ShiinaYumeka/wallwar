
forceload add ~-3 ~-3 ~3 ~3
tellraw @a {"translate":"============================================","color":"white"}
tellraw @a [{"translate": "玩家","color":"light_purple"},{"selector": "@p[gamemode=!spectator]"},{"translate":"建造出了奇观——裁判法庭","color":"light_purple"}]
tellraw @a [{"selector": "@p"},{"translate":"已经决定好他的猎物了","color":"light_purple"}]
tellraw @a {"translate":"============================================","color":"white"}
playsound block.end_portal.spawn player @a ~ ~ ~ 1 1 1
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 300 normal
tag @s add building_court
