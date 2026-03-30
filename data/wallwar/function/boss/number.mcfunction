
execute store result score #temp temp if entity @a[team=!sp]

tellraw @a [{"translate": "-------------------------"}]
tellraw @a [{"translate": "/tag 玩家 add boss 使一名玩家成为boss"}]
tellraw @a [{"translate": "若需要更换boss，请先输入/tag @a remove boss"}]
execute if score #temp temp matches ..4 run tellraw @a [{"translate": "当前人数：5-\n推荐模式：还不快去征兵？"}]
execute if score #temp temp matches 5 run tellraw @a [{"translate": "当前人数：5\n推荐模式：第五人格\nBOSS拥有辅助技能【闪现】"}]
execute if score #temp temp matches 6 run tellraw @a [{"translate": "当前人数：6\n推荐模式：1v5\nBOSS拥有：5命令方块+1连锁命令方块"}]
execute if score #temp temp matches 7 run tellraw @a [{"translate": "当前人数：7\n推荐模式：1v6\nBOSS拥有：7命令方块+2连锁命令方块"}]

execute if score #temp temp matches 8 run tellraw @a [{"translate": "当前人数：8\n推荐模式：2v6\nBOSS拥有：3命令方块+2连锁命令方块"}]
execute if score #temp temp matches 9 run tellraw @a [{"translate": "当前人数：9\n推荐模式：2v7\nBOSS拥有：5命令方块+2连锁命令方块"}]
execute if score #temp temp matches 10 run tellraw @a [{"translate": "当前人数：10\n推荐模式：2v8\nBOSS拥有：7命令方块+2连锁命令方块"}]
execute if score #temp temp matches 11 run tellraw @a [{"translate": "当前人数：11\n推荐模式：2v9\nBOSS拥有：9命令方块+3连锁命令方块"}]

execute if score #temp temp matches 12 run tellraw @a [{"translate": "当前人数：12\n推荐模式：3v9\nBOSS拥有：5命令方块+3连锁命令方块"}]
execute if score #temp temp matches 13 run tellraw @a [{"translate": "当前人数：13\n推荐模式：3v10\nBOSS拥有：7命令方块+3连锁命令方块"}]
execute if score #temp temp matches 14 run tellraw @a [{"translate": "当前人数：14\n推荐模式：3v11\nBOSS拥有：9命令方块+3连锁命令方块"}]
execute if score #temp temp matches 15 run tellraw @a [{"translate": "当前人数：15\n推荐模式：3v12\nBOSS拥有：11命令方块+3连锁命令方块"}]

execute if score #temp temp matches 16 run tellraw @a [{"translate": "当前人数：16\n推荐模式：4v12\nBOSS拥有：7命令方块+3连锁命令方块"}]
execute if score #temp temp matches 17 run tellraw @a [{"translate": "当前人数：17\n推荐模式：4v13\nBOSS拥有：9命令方块+3连锁命令方块"}]
execute if score #temp temp matches 18 run tellraw @a [{"translate": "当前人数：18\n推荐模式：4v14\nBOSS拥有：11命令方块+4连锁命令方块"}]
execute if score #temp temp matches 19 run tellraw @a [{"translate": "当前人数：19\n推荐模式：4v15\nBOSS拥有：13命令方块+4连锁命令方块"}]

execute if score #temp temp matches 20 run tellraw @a [{"translate": "当前人数：20\n推荐模式：5v15\nBOSS拥有：9命令方块+4连锁命令方块"}]
execute if score #temp temp matches 21 run tellraw @a [{"translate": "当前人数：21\n推荐模式：5v16\nBOSS拥有：11命令方块+4连锁命令方块"}]
execute if score #temp temp matches 22 run tellraw @a [{"translate": "当前人数：22\n推荐模式：5v17\nBOSS拥有：13命令方块+5连锁命令方块"}]
execute if score #temp temp matches 23 run tellraw @a [{"translate": "当前人数：23\n推荐模式：5v18\nBOSS拥有：15命令方块+5连锁命令方块"}]
execute if score #temp temp matches 24.. run tellraw @a [{"translate": "当前人数：23+\n推荐模式：还惦记这你那boss模式？？"}]

tellraw @a [{"translate": "-------------------------"}]