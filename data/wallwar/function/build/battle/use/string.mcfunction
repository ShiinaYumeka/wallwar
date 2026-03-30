
tag @s add building_battle_string
#item replace entity @e[type=item_frame,sort=random,limit=1,distance=..1.5] container.0 with air
particle flame ~ ~ ~ 0 0 0 0.4 30


tellraw @a {"translate": "","color": "gray","bold": true}
tellraw @a {"translate": "沉闷的声音：扩张是为了生存，我来承受这份罪孽","color": "gray","bold": true}
tellraw @a {"translate": "“侵入感应”（每十秒，当你周围24格内有其他玩家时，其获得发光）","color": "gray","bold": true}
