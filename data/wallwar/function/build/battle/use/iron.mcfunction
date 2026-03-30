

tag @s add building_battle_iron
#item replace entity @e[type=item_frame,sort=random,limit=1,distance=..1.5] container.0 with air
particle flame ~ ~ ~ 0 0 0 0.4 30


tellraw @a {"translate": "","color": "gray","bold": true}
tellraw @a {"translate": "沉闷的声音：当惩罚降临世间，我带领弱小的生命迁于地下","color": "gray","bold": true}
tellraw @a {"translate": "“地底的传说”（你的地底安全范围向下增加20格，在范围内时获得发光并将生命值上限减少40%；敌人在安全范围内只会受到凋灵I）","color": "gray","bold": true}
