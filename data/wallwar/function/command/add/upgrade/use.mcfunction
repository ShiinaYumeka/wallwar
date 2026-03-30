
item replace entity 0-0-0-0-1 container.0 from entity @s weapon.offhand
#初始化
data modify storage minecraft:temp temp set value {length:{num:-1},random:{num:0},ench:[],temp:[],enchList:[]}
#设定
#data modify storage minecraft:temp temp.enchList set value [{ench:"unbreaking",min:2,max:5,name:"耐久"},{ench:"vanishing_ench",min:1,max:1,name:"消失魔咒"}]
function wallwar:command/add/upgrade/test


function wallwar:command/add/upgrade/main
item replace entity @s weapon.offhand from entity 0-0-0-0-1 container.0

tellraw @s [{"translate": "物品强化成功，当前灵魂数目：","color": "red"},{"score": {"name": "@s","objective":"kill_entity"}}]
