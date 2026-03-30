
execute as 0-0-0-0-1 if entity @s[tag=event_wither] run function wallwar:event/wither/spawn

execute as @e[type=item_frame,tag=building_wither] at @s positioned ~ ~-1 ~ run function wallwar:wither/summon/main

execute as @e[type=item_frame,tag=building_ocean] at @s if entity @s[y=60,dy=260] positioned ~ ~-1 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_one:1b}}}}] if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_two:1b}}}}] if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] run return run function wallwar:build/ocean/death_fight


execute if score DeathFight time matches 1..10 run function wallwar:death_fight/plain/main
execute if score DeathFight time matches 11..20 run function wallwar:death_fight/desert/main
execute if score DeathFight time matches 21..30 run function wallwar:death_fight/mount/main
execute if score DeathFight time matches 31..40 run function wallwar:death_fight/beach/main
execute if score DeathFight time matches 41..50 run function wallwar:death_fight/cloud/main
execute if score DeathFight time matches 51..60 run function wallwar:death_fight/oldcity/main
execute if score DeathFight time matches 61..70 run function wallwar:death_fight/cloud/main
execute if score DeathFight time matches 71..80 run function wallwar:death_fight/cloud/main


execute at 0-0-0-0-1 positioned ~ 315 ~ run spreadplayers ~ ~ 3 15 under 315 false @e[tag=wither_skeleton]

