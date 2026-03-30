

tag @s add building_battle_flint
#item replace entity @e[type=item_frame,sort=random,limit=1,distance=..1.5] container.0 with air
particle flame ~ ~ ~ 0 0 0 0.4 30


tellraw @a {"translate": "","color": "gray","bold": true}
tellraw @a {"translate": "沉闷的声音：我将祝福弱小，让我们战无不胜","color": "gray","bold": true}
tellraw @a {"translate": "“领主之助”（如果你身上的所有护甲都未拥有附魔，你获得抗性提升Ⅱ并额外获得2盔甲韧性）","color": "gray","bold": true}
