
forceload remove ~-4 ~-4 ~4 ~4
playsound entity.dragon_fireball.explode player @a ~ ~ ~ 1 0.5
particle explosion_emitter ~ ~ ~ 0 0 0 1 5 normal
tag @s remove building_wither

scoreboard players display numberformat build_wither display fixed {"translate": "损坏","color": "dark_gray"}
