
forceload add ~-4 ~-4 ~4 ~4
tellraw @a {"translate":"============================================","color":"white"}
tellraw @a [{"translate": "玩家","color":"dark_gray"},{"selector": "@p[gamemode=!spectator]"},{"translate":"建造出了奇观——神降祭坛","color":"dark_gray"}]
tellraw @a [{"translate":"*人类世界污秽不堪，我们需要神明介入重新洗牌","color":"gray"}]
tellraw @a {"translate":"============================================","color":"white"}
playsound block.end_portal.spawn player @a ~ ~ ~ 1 1 1
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 300 normal
tag @s add building_wither
data merge entity @s {Invulnerable:1b}
scoreboard players set @s wither_armor 0
scoreboard players set @s wither_health 300
execute if entity @s[tag=building_wither_clock] run scoreboard players set @s wither_health 200

execute if score #EVENT time matches 1.. if score FUN time matches 34..67 run scoreboard players set FUN time 33
