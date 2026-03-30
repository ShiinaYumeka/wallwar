


title @a title ["",{"translate":"【猪会飞！？】","color": "red"}]
title @a subtitle ["",{"translate":"手持胡萝卜钓竿骑乘猪时会使其漂浮","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【猪会飞！？】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<阶段事件>","color": "gold"}]
tellraw @a ["",{"translate":"手持胡萝卜钓竿骑乘猪时会使其漂浮","color": "white"}]
tellraw @a ["",{"translate":"以此法漂浮的猪会晋升为“将军”并免疫摔落伤害","color": "white"}]
tellraw @a ["",{"translate":"“将军”在漂浮状态获得抗性提升IV与生命回复II","color": "white"}]
tellraw @a ["",{"translate":"触发时给予每个玩家一个猪刷怪蛋和胡萝卜钓竿","color": "white"}]
tellraw @a ["",{"translate":"“你从山东来带来一身雪白，爱吃广东菜~”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]


tag 0-0-0-0-1 add event_pig
give @a[team=!sp] pig_spawn_egg
give @a[team=!sp] carrot_on_a_stick
