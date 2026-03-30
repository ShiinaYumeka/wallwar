

tag @s add building_battle_bucket
#item replace entity @e[type=item_frame,sort=random,limit=1,distance=..1.5] container.0 with air
particle flame ~ ~ ~ 0 0 0 0.4 30


tellraw @a {"translate": "","color": "gray","bold": true}
tellraw @a {"translate": "沉闷的声音：骨子里的野性是无法进化掉的","color": "gray","bold": true}
tellraw @a {"translate": "“血脉”（当你的护甲值等于20点时，你获得额外1点护甲值）","color": "gray","bold": true}
