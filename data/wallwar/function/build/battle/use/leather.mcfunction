

tag @s add building_battle_leather
#item replace entity @e[type=item_frame,sort=random,limit=1,distance=..1.5] container.0 with air
particle flame ~ ~ ~ 0 0 0 0.4 30


tellraw @a {"translate": "","color": "gray","bold": true}
tellraw @a {"translate": "沉闷的声音：这是大自然赐予生物们的礼物","color": "gray","bold": true}
tellraw @a {"translate": "“坚韧表皮”（如果你未穿戴任何护甲，你的护甲值被设置为20点并将盔甲韧性设置为8）","color": "gray","bold": true}
