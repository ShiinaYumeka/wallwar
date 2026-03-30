
item modify entity @s weapon.offhand minecraft:command_book2


scoreboard players operation @s kill_entity /= 3 const
scoreboard players operation @s kill_entity *= 2 const

tellraw @s [{"translate": "物品附魔成功，当前灵魂数目：","color": "red"},{"score": {"name": "@s","objective":"kill_entity"}}]