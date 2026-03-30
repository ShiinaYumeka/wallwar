
scoreboard players reset @s suicide
scoreboard players enable @s suicide
execute unless score GAME_PRO time matches 2.. run return run kill @s

title @s title {"translate": "你现在不许自杀！"}
