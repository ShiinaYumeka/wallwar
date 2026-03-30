
execute if entity @s[tag=building_wither_carrot] run return run tellraw @a[distance=..8] {"translate": "你已经献祭过 群英荟萃 了"}

setblock ~ ~ ~ glowstone replace

tag @s add building_wither_carrot

item replace entity @e[type=item_frame,distance=..1.5] container.0 with air

particle witch ~ ~ ~ 0.5 1 0.5 1 100 normal
playsound entity.wither.spawn player @a ~ ~ ~
