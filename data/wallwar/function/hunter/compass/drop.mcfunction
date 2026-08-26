
scoreboard players add @s hunter_tracking 1
kill @e[type=item,distance=..8,nbt={Item:{components:{"minecraft:custom_data":{tracker:1b}}}}]
scoreboard players set @s hunter_drop_compass 0
function wallwar:hunter/give_compass
