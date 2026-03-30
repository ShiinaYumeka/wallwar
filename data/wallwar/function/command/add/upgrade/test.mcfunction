

execute if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/melee_weapon run return run data modify storage minecraft:temp temp.enchList set value [{ench:"sharpness",min:2,max:6,name:"锋利"},{ench:"breaker",min:2,max:6,name:"撕裂"},{ench:"sharpness",min:1,max:6,name:"锋利"},{ench:"breaker",min:1,max:6,name:"撕裂"},{ench:"stun",min:1,max:3,name:"震慑"}]
execute if items entity 0-0-0-0-1 container.0 #axes run return run data modify storage minecraft:temp temp.enchList set value [{ench:"sharpness",min:2,max:6,name:"锋利"},{ench:"efficiency",min:2,max:6,name:"效率"}]
execute if items entity 0-0-0-0-1 container.0 bow run return run data modify storage minecraft:temp temp.enchList set value [{ench:"power",min:2,max:6,name:"力量"},{ench:"pervade",min:2,max:6,name:"贯穿"},{ench:"power",min:1,max:6,name:"力量"},{ench:"pervade",min:1,max:6,name:"贯穿"},{ench:"nogravity",min:1,max:1,name:"鹰隼"}]
execute if items entity 0-0-0-0-1 container.0 crossbow run return run data modify storage minecraft:temp temp.enchList set value [{ench:"piercing",min:2,max:6,name:"穿透"}]
execute if items entity 0-0-0-0-1 container.0 fishing_rod run return run data modify storage minecraft:temp temp.enchList set value [{ench:"lure",min:1,max:4,name:"饵钓"}]
execute if items entity 0-0-0-0-1 container.0 trident run return run data modify storage minecraft:temp temp.enchList set value [{ench:"impaling",min:2,max:6,name:"穿刺"}]
execute if items entity 0-0-0-0-1 container.0 mace run return run data modify storage minecraft:temp temp.enchList set value [{ench:"density",min:1,max:6,name:"致密"},{ench:"wind_burst",min:1,max:6,name:"风暴"},{ench:"expensive_curse",min:1,max:1,name:"昂贵诅咒"},{ench:"breach",min:1,max:5,name:"破甲"}]
execute if items entity 0-0-0-0-1 container.0 shield run return run data modify storage minecraft:temp temp.enchList set value [{ench:"shield_blast",min:2,max:6,name:"爆炸抗性"},{ench:"shield_fire",min:2,max:6,name:"火焰抗性"},{ench:"shield_magic",min:2,max:6,name:"魔法抗性"},{ench:"shield_mob",min:2,max:6,name:"怪物抗性"},{ench:"shield_prj",min:2,max:6,name:"弹射物抗性"}]
#enchant @s shield_fire

execute if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/head_armor run return run data modify storage minecraft:temp temp.enchList set value [{ench:"protection",min:2,max:5,name:"保护"},{ench:"blast_protection",min:2,max:5,name:"爆炸保护"},{ench:"fire_protection",min:1,max:5,name:"火焰保护"},{ench:"projectile_protection",min:3,max:5,name:"弹射物保护"}]
execute if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/chest_armor run return run data modify storage minecraft:temp temp.enchList set value [{ench:"protection",min:2,max:5,name:"保护"},{ench:"blast_protection",min:3,max:5,name:"爆炸保护"},{ench:"fire_protection",min:1,max:5,name:"火焰保护"},{ench:"projectile_protection",min:3,max:5,name:"弹射物保护"}]
execute if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/leg_armor run return run data modify storage minecraft:temp temp.enchList set value [{ench:"protection",min:2,max:5,name:"保护"},{ench:"blast_protection",min:3,max:5,name:"爆炸保护"},{ench:"fire_protection",min:1,max:5,name:"火焰保护"},{ench:"projectile_protection",min:2,max:5,name:"弹射物保护"}]
execute if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/foot_armor run return run data modify storage minecraft:temp temp.enchList set value [{ench:"protection",min:2,max:5,name:"保护"},{ench:"blast_protection",min:2,max:5,name:"爆炸保护"},{ench:"fire_protection",min:2,max:5,name:"火焰保护"},{ench:"projectile_protection",min:2,max:5,name:"弹射物保护"}]

execute if items entity 0-0-0-0-1 container.0 #pickaxes run return run data modify storage minecraft:temp temp.enchList set value [{ench:"noefficiency",min:1,max:1,name:"排斥诅咒-效率"},{ench:"efficiency",min:3,max:6,name:"效率"}]
execute if items entity 0-0-0-0-1 container.0 #shovels run return run data modify storage minecraft:temp temp.enchList set value [{ench:"efficiency",min:3,max:6,name:"效率"}]
execute if items entity 0-0-0-0-1 container.0 #hoes run return run data modify storage minecraft:temp temp.enchList set value [{ench:"efficiency",min:3,max:6,name:"效率"},{ench:"fortune",min:1,max:8,name:"时运"}]
execute if items entity 0-0-0-0-1 container.0 shears run return run data modify storage minecraft:temp temp.enchList set value [{ench:"efficiency",min:2,max:6,name:"效率"}]

data modify storage minecraft:temp temp.enchList set value [{ench:"unbreaking",min:2,max:5,name:"耐久"}]