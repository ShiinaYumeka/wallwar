
execute if entity @s[tag=building_wither_book] run return run tellraw @a[distance=..8] {"translate": "你已经献祭过 热土豆书 了"}

setblock ~ ~ ~ glowstone replace

tag @s add building_wither_book

item replace entity @e[type=item_frame,distance=..1.5] container.0 with air

particle witch ~ ~ ~ 0.5 1 0.5 1 100 normal
playsound entity.wither.spawn player @a ~ ~ ~
