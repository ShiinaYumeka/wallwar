

item replace entity 0-0-0-0-1 container.0 from entity @s weapon.offhand
#初始化
data modify storage minecraft:temp temp set value {length:{num:-1},random:{num:0},ench:[],temp:[],enchList:[]}
#设定
#data modify storage minecraft:temp temp.enchList set value [{ench:"unbreaking",min:2,max:5,name:"耐久"},{ench:"vanishing_ench",min:1,max:1,name:"消失魔咒"}]

execute if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/head_armor run data modify storage minecraft:temp temp.enchList set value [{ench:"protection",min:2,max:5,name:"保护"},{ench:"blast_protection",min:2,max:5,name:"爆炸保护"},{ench:"fire_protection",min:1,max:5,name:"火焰保护"},{ench:"projectile_protection",min:3,max:5,name:"弹射物保护"}]
execute if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/chest_armor run data modify storage minecraft:temp temp.enchList set value [{ench:"protection",min:2,max:5,name:"保护"},{ench:"blast_protection",min:3,max:5,name:"爆炸保护"},{ench:"fire_protection",min:1,max:5,name:"火焰保护"},{ench:"projectile_protection",min:3,max:5,name:"弹射物保护"}]
execute if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/leg_armor run data modify storage minecraft:temp temp.enchList set value [{ench:"protection",min:2,max:5,name:"保护"},{ench:"blast_protection",min:3,max:5,name:"爆炸保护"},{ench:"fire_protection",min:1,max:5,name:"火焰保护"},{ench:"projectile_protection",min:2,max:5,name:"弹射物保护"}]
execute if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/foot_armor run data modify storage minecraft:temp temp.enchList set value [{ench:"protection",min:2,max:5,name:"保护"},{ench:"blast_protection",min:2,max:5,name:"爆炸保护"},{ench:"fire_protection",min:2,max:5,name:"火焰保护"},{ench:"projectile_protection",min:2,max:5,name:"弹射物保护"}]

function wallwar:command/add/upgrade/main
item replace entity @s weapon.offhand from entity 0-0-0-0-1 container.0
