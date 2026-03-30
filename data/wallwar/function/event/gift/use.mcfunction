

summon item_display ~ ~ ~ {Tags:[event_gift]}
spreadplayers ~ ~ 25 70 false @e[tag=event_gift]
execute store result score #x temp run data get entity @e[tag=event_gift,limit=1] Pos[0] 1
execute store result score #y temp run data get entity @e[tag=event_gift,limit=1] Pos[1] 1
execute store result score #z temp run data get entity @e[tag=event_gift,limit=1] Pos[2] 1
execute as @e[tag=event_gift,limit=1] at @s run tp @s ~ ~2 ~
schedule function wallwar:event/gift/cast 60s replace

title @a title ["",{"translate":"【空投】","color": "red"}]
title @a subtitle ["",{"translate":"在目标位置刷新一个空投","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【空投】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<阶段事件>","color": "gold"}]
tellraw @a ["",{"translate":"在60秒后，在","color": "white"},{"translate": "X="},{"score":{"name": "#x","objective": "temp"},"color": "white"},{"translate": " Y="},{"score":{"name": "#y","objective": "temp"},"color": "white"},{"translate": " Z="},{"score":{"name": "#z","objective": "temp"},"color": "white"},{"translate":"刷新一个被强化深板岩包裹的空投"}]
tellraw @a ["",{"translate":"空投内藏有随机BOSS武器，附魔金苹果，玩家头颅等高价值道具"}]
tellraw @a ["",{"translate":"-空投坠落时将造成大量伤害，请注意躲避！","color": "red"}]
tellraw @a ["",{"translate":"“为了防止空投被鼠鼠偷吃，政府使用了最高强度的混凝土将其封装”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
