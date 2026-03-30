

execute if entity @a[distance=..0.2,team=!sp,gamemode=!spectator] run function wallwar:clock/cost

execute store result score #temp temp run random value 1..100
execute positioned ~-3 ~-0.5 ~-3 if entity @e[type=item_frame,distance=0.1..,nbt={Item:{components:{"minecraft:custom_data":{clock:1b}}}},dx=6,dy=0,dz=6] run scoreboard players add #temp temp 5
execute positioned ~-4 ~-0.5 ~-4 if entity @e[type=item_frame,distance=0.1..,nbt={Item:{components:{"minecraft:custom_data":{clock:2b}}}},dx=8,dy=0,dz=8] run scoreboard players add #temp temp 8
#tellraw @a [{"selector": "@s"},{"score": {"name": "#temp","objective": "temp"}}]
execute unless score #temp temp matches 1..25 run return fail
execute unless entity @s[y=0,dy=150] run return fail

execute positioned ^-1 ^ ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^-2 ^ ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^ ^ ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^1 ^ ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^2 ^ ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops

execute positioned ^-1 ^1 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^-2 ^1 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^ ^1 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^1 ^1 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^2 ^1 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops

execute positioned ^-1 ^2 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^-2 ^2 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^ ^2 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^1 ^2 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^2 ^2 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops

execute positioned ^-1 ^-1 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^-2 ^-1 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^ ^-1 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^1 ^-1 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^2 ^-1 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops

execute positioned ^-1 ^-2 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^-2 ^-2 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^ ^-2 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^1 ^-2 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
execute positioned ^2 ^-2 ^-0.5 if block ~ ~ ~ #crops run function wallwar:clock/crops
