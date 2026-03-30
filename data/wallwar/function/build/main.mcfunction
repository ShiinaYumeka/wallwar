scoreboard players reset #build time

execute as 0-0-0-0-1 if entity @s[tag=event_ghost] run function wallwar:event/ghost/main
execute as @a[tag=FIGHT] unless entity @e[tag=building_battle] run function wallwar:build/battle/effect/clear
execute as @e[type=item_frame] run function wallwar:build/setdown
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_update_team:1b}}}}] run function wallwar:build/team

function wallwar:build/check

execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_sand:1b}}}}] at @s if entity @s[y=60,dy=260] run function wallwar:build/sand/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_ocean:1b}}}}] at @s if entity @s[y=60,dy=260] run function wallwar:build/ocean/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_tower:1b}}}}] at @s if entity @s[y=60,dy=260] run function wallwar:build/tower/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_spawner:1b}}}}] at @s if entity @s[y=-60,dy=210] run function wallwar:build/spawner/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_flag:1b}}}}] at @s if entity @s[y=60,dy=260] run function wallwar:build/flag/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_respawn:1b}}}}] at @s run function wallwar:build/respawn/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_wither:1b}}}}] at @s run function wallwar:build/wither/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{wither_craft:1b}}}}] at @s run function wallwar:wither/craft/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_electric:1b}}}}] at @s if entity @s[y=60,dy=260] run function wallwar:build/electric/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_trans:1b}}}}] at @s run function wallwar:build/trans/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_trans:2b}}}}] at @s run function wallwar:build/trans2/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_battle:1b}}}}] at @s if entity @s[y=-64,dy=154] run function wallwar:build/battle/main
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_farm:1b}}}}] at @s if entity @s[y=60,dy=260] run function wallwar:build/farm/main
#execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{build:3b}}}}] at @s if entity @s[y=60,dy=260] run function wallwar:build/use3

#优先级高
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_court:1b}}}}] at @s if entity @s[y=30,dy=290] run function wallwar:build/court/main
#优先级最高
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_player:1b}}}}] at @s if entity @s[y=60,dy=260] run function wallwar:build/player/main

execute as @a[gamemode=!spectator,team=!sp] if items entity @s armor.head #head_armor[enchantments~[{enchantments:"low_damage1",levels:{min:1}}],damage~{durability:{max:182}}] at @s run function wallwar:ench/lowdamage/main
