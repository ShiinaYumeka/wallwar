
execute store result score #temp temp if entity @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data": {"weather_clear":1b}}}},distance=..3]
execute unless score #temp temp matches 3 run return fail

item replace entity @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data": {"weather_clear":1b}}}},distance=..1.5] container.0 with air
item replace entity @s container.0 with air
execute as @p[gamemode=!spectator,tag=wither_user] run function wallwar:wither/craft/player/ench