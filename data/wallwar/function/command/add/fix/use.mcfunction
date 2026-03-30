
item replace entity 0-0-0-0-1 container.0 from entity @s weapon.offhand
#初始化
data modify storage minecraft:temp temp set value {length:{num:-1},random:{num:0},ench:[],temp:[],enchList:[]}
#设定
function wallwar:command/add/fix/test

function wallwar:command/add/fix/main
item replace entity @s weapon.offhand from entity 0-0-0-0-1 container.0

tellraw @s [{"translate": "物品修饰成功，当前灵魂数目：","color": "red"},{"score": {"name": "@s","objective":"kill_entity"}}]
