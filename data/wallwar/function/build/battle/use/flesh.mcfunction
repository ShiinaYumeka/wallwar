

execute as @a[team=!sp] if score @s tid = build_battle tid run tag @s add battle_flesh_player

#item replace entity @e[type=item_frame,sort=random,limit=1,distance=..1.5] container.0 with air
particle flame ~ ~ ~ 0 0 0 0.4 30


tellraw @a {"translate": "","color": "gray","bold": true}
tellraw @a {"translate": "沉闷的声音：我庇护他们，并用威信与能力治理国度","color": "gray","bold": true}
tellraw @a {"translate": "“恐惧之力”（当你生命值低于4时，对周围的玩家造成失明以及虚弱效果影响且你也获得虚弱，每名玩家触发一次后失效）","color": "gray","bold": true}
