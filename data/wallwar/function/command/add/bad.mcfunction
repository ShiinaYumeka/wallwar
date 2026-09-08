
scoreboard players operation #cost temp = @s temp
scoreboard players operation #cost temp *= 2 const
scoreboard players operation #cost temp /= 3 const
scoreboard players operation @s kill_entity -= #cost temp
tellraw @s [{"translate": "物品强化失败，当前灵魂数目：","color": "red"},{"score": {"name": "@s","objective":"kill_entity"}}]
