
execute as @a[team=!sp] if score @s tid = build_battle tid run tag @s add battle_bone_player

#item replace entity @e[type=item_frame,sort=random,limit=1,distance=..1.5] container.0 with air
particle flame ~ ~ ~ 0 0 0 0.4 30

tellraw @a {"translate": "","color": "gray","bold": true}
tellraw @a {"translate": "沉闷的声音：惩罚恶人，用以慰祭亡魂","color": "gray","bold": true}
tellraw @a {"translate": "“永恒的诅咒”（当你被玩家击杀后，击杀你的玩家减少2点体力上限。最多减少4）","color": "gray","bold": true}
