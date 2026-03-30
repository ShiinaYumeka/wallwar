

data remove entity @s Glowing
execute unless function wallwar:build/electric/test run return fail
execute if score #wither_no_use time matches 1.. run return fail


playsound ui.loom.take_result block @a ~ ~ ~ 2 0.1

#effect give @a[gamemode=!spectator,sort=nearest] glowing 11 0 true
scoreboard players reset #electric_glow temp
execute unless entity @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_electric:1b}}}},distance=5..48] as @a[distance=..12,gamemode=!spectator,sort=nearest] run function wallwar:build/electric/effect
execute if entity @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_electric:1b}}}},distance=5..48] as @a[distance=..24,gamemode=!spectator,sort=nearest] run function wallwar:build/electric/effect
execute if entity @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_electric:1b}}}},distance=5..48] run playsound minecraft:entity.bee.hurt player @a ~ ~ ~ 1 2
execute if score #electric_glow temp matches 1 run function wallwar:build/electric/par
