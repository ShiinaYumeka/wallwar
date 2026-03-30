
title @a title ["",{"translate":"【食戟之灵】","color": "red"}]
title @a subtitle ["",{"translate":"*从现在开始，每次出现阶段事件时，所有玩家身上的护甲耐久下降一百点。","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【食戟之灵】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<阶段事件>","color": "gold"}]
tellraw @a ["",{"translate":"*从现在开始，每次出现阶段事件时，所有玩家身上的护甲耐久下降一百点。","color": "white"}]
tellraw @a ["",{"translate":"*如果此装备的耐久损耗大于150点，则不会受到影响","color": "white"}]
tellraw @a ["",{"translate":"“你身上的护甲觉得这些食物美味到爆炸了”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

tag 0-0-0-0-1 add event_armor_damage

function wallwar:event/armor_damage/main
