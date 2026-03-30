
execute store result score #temp temp run random value 1..100

data modify storage minecraft:temp temp set value {ench:"unbreaking",max:3,name:"耐久"}
execute if score #temp temp matches 1..45 if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/melee_weapon run data modify storage minecraft:temp temp set value {ench:"sharpness",max:6,name:"锋利"}
execute if score #temp temp matches 46..90 if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/melee_weapon run data modify storage minecraft:temp temp set value {ench:"breaker",max:6,name:"撕裂"}
execute if score #temp temp matches 91..100 if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/melee_weapon run data modify storage minecraft:temp temp set value {ench:"stun",max:3,name:"震慑"}
execute if score #temp temp matches 1..50 if items entity 0-0-0-0-1 container.0 #axes run data modify storage minecraft:temp temp set value {ench:"sharpness",max:6,name:"锋利"}
execute if score #temp temp matches 51..100 if items entity 0-0-0-0-1 container.0 #axes run data modify storage minecraft:temp temp set value {ench:"efficiency",max:6,name:"效率"}
execute if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/mining run data modify storage minecraft:temp temp set value {ench:"efficiency",max:6,name:"效率"}
execute if score #temp temp matches 1..50 if items entity 0-0-0-0-1 container.0 bow run data modify storage minecraft:temp temp set value {ench:"power",max:6,name:"力量"}
execute if score #temp temp matches 51..100 if items entity 0-0-0-0-1 container.0 bow run data modify storage minecraft:temp temp set value {ench:"pervade",max:6,name:"贯穿"}
execute if items entity 0-0-0-0-1 container.0 crossbow run data modify storage minecraft:temp temp set value {ench:"piercing",max:6,name:"穿透"}
execute if items entity 0-0-0-0-1 container.0 fishing_rod run data modify storage minecraft:temp temp set value {ench:"lure",max:5,name:"饵钓"}
execute if items entity 0-0-0-0-1 container.0 trident run data modify storage minecraft:temp temp set value {ench:"impaling",max:6,name:"穿刺"}
execute if score #temp temp matches 1..70 if items entity 0-0-0-0-1 container.0 mace run data modify storage minecraft:temp temp set value {ench:"density",max:10,name:"致密"}
execute if score #temp temp matches 71..100 if items entity 0-0-0-0-1 container.0 mace run data modify storage minecraft:temp temp set value {ench:"breach",max:10,name:"破甲"}

execute if score #temp temp matches 1..40 if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/armor run data modify storage minecraft:temp temp set value {ench:"protection",max:6,name:"保护"}
execute if score #temp temp matches 41..50 if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/armor run data modify storage minecraft:temp temp set value {ench:"armor_fire",max:1,name:"火环"}
execute if score #temp temp matches 51..65 if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/armor run data modify storage minecraft:temp temp set value {ench:"blast_protection",max:5,name:"爆炸保护"}
execute if score #temp temp matches 66..80 if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/armor run data modify storage minecraft:temp temp set value {ench:"projectile_protection",max:5,name:"弹射物保护"}
execute if score #temp temp matches 81..90 if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/armor run data modify storage minecraft:temp temp set value {ench:"armor_ice",max:1,name:"冰甲"}
execute if score #temp temp matches 91..100 if items entity 0-0-0-0-1 container.0 #minecraft:enchantable/armor run data modify storage minecraft:temp temp set value {ench:"fire_protection",max:5,name:"火焰保护"}

function wallwar:command/add/add2 with storage minecraft:temp temp

tellraw @s [{"translate": "物品强化成功，当前灵魂数目：","color": "red"},{"score": {"name": "@s","objective":"kill_entity"}}]

return 1