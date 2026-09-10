
tellraw @s [{"translate": "当前灵魂数目：","color": "red"},{"score": {"name": "@s","objective": "kill_entity"}}]
scoreboard players reset @s soul
scoreboard players enable @s soul
