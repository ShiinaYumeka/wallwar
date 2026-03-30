
execute if entity @s[tag=building_wither_clock] run return run tellraw @a[distance=..8] {"translate": "你已经献祭过 幻梦时钟 了"}

setblock ~ ~ ~ glowstone replace

tag @s add building_wither_clock
scoreboard players remove @s wither_health 100

item replace entity @e[type=item_frame,distance=..1.5] container.0 with air

particle witch ~ ~ ~ 0.5 1 0.5 1 100 normal
playsound entity.wither.spawn player @a ~ ~ ~
