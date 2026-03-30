
scoreboard players reset @s tutorial
return run function wallwar:tutorial/test
scoreboard players enable @s tutorial
execute if score GAME_PRO time matches 1.. run return run title @s title {"translate": "你现在不许进入教学！"}

execute in wallwar:test positioned 0 10 0 run tp @s ~ ~ ~ 0.0 0.0
gamemode adventure @s
effect give @s resistance infinite 4 true
