
clear @a enchanted_golden_apple[custom_data~{"death_fight_end":1b}]
kill @e[nbt={Item:{components:{"minecraft:custom_data":{death_fight_end:1b}}}}]


execute store result bossbar dead_line value run scoreboard players get #end time
scoreboard players reset #end time

execute if score DeathFight time matches 1..10 at 0-0-0-0-1 positioned ~ 296 ~ run function wallwar:system/end/cast2
execute if score DeathFight time matches 11..20 at 0-0-0-0-1 positioned ~ 307 ~ run function wallwar:system/end/cast2
execute if score DeathFight time matches 21..30 at 0-0-0-0-1 positioned ~ 276 ~ run function wallwar:system/end/cast2
execute if score DeathFight time matches 31..40 at 0-0-0-0-1 positioned ~ 301 ~ run function wallwar:system/end/cast2
execute if score DeathFight time matches 41..50 at 0-0-0-0-1 positioned ~ 279 ~ run function wallwar:system/end/cast2
execute if score DeathFight time matches 51..60 at 0-0-0-0-1 positioned ~ 313 ~ run function wallwar:system/end/cast2
execute if score DeathFight time matches 61..70 at 0-0-0-0-1 positioned ~ 279 ~ run function wallwar:system/end/cast2
execute if score DeathFight time matches 71..80 at 0-0-0-0-1 positioned ~ 279 ~ run function wallwar:system/end/cast2
execute if score DeathFight time matches -1 at 0-0-0-0-1 positioned ~ 310 ~ run function wallwar:system/end/cast2
bossbar add dead_line "x"
bossbar set dead_line color red
bossbar set dead_line style notched_20
bossbar set dead_line max 400
bossbar set dead_line name "上帝注视进度"
bossbar set dead_line players @a
bossbar set dead_line visible true