
tag @s add building_battle_apple

#item replace entity @e[type=item_frame,sort=random,limit=1,distance=..1.5] container.0 with air
particle flame ~ ~ ~ 0 0 0 0.4 30

tellraw @a {"translate": "","color": "gray","bold": true}
tellraw @a {"translate": "沉闷的声音：我呼唤，他们回应我","color": "gray","bold": true}
tellraw @a {"translate": "“远古的呼唤”（每次消耗祭品时，获得伤害吸收V）","color": "gray","bold": true}

