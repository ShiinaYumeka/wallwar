
effect give @s resistance 180 3 true
effect give @s speed 180 3 true
effect give @s jump_boost 180 3 true
effect give @s absorption 180 3 true
effect give @s conduit_power 180 3 true
effect give @s strength 180 3 true
effect give @s saturation 1 3 true

title @a title {"translate":"代罚者加入战场。","color":"red"}
title @a subtitle [{"translate":"神呼唤那人，对他说，你在哪里……","color":"white"}]
tellraw @a [{"selector": "@s"},{"translate":"成为了代罚者","color":"red"}]

execute store result bossbar dead_line value run scoreboard players get #end time

clear @a enchanted_golden_apple[custom_data~{"death_fight_end":1b}]
kill @e[nbt={Item:{components:{"minecraft:custom_data":{death_fight_end:1b}}}}]
scoreboard players set GAME time 3600

