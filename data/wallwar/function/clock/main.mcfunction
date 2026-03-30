scoreboard players reset #clock time

execute if score 0-0-0-0-1 HELP_ME matches 1.. run function wallwar:event/vote/check

execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{weather_clear:1b}}}}] at @s run function wallwar:clock/weather

execute if score #wither_no_use time matches 1.. run return fail
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{clock:1b}}}}] at @s run function wallwar:clock/use
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{clock:2b}}}}] at @s run function wallwar:clock/use2
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{clock:3b}}}}] at @s run function wallwar:clock/use3

