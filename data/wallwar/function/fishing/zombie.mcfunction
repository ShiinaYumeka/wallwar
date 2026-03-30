
summon drowned ~ ~ ~ {Tags:["new"],"PersistenceRequired": true,"Health": 60,"CustomNameVisible": true,"CustomName": {"translate":"海神仆从","color": "blue"},"equipment":{feet:{"id":"diamond_boots","count": 1,"components": {"enchantments": {frost_walker:2}}},legs:{"id":"diamond_leggings","count": 1},chest:{"id":"diamond_chestplate","count": 1},head:{"id":"diamond_helmet","count": 1},mainhand:{"id":"diamond_sword","count": 1}},"CanPickUpLoot": true,"drop_chances": {"head": 0,"chest": 0,"legs": 0,"feet": 0,"mainhand": 0,"offhand": 0},"attributes": [{"id": "max_health","base": 60},{"id": "follow_range","base": 64},{"id": "movement_speed","base": 0.3}],IsBaby:1b,active_effects:[{id:"speed",amplifier:0,duration:-1},{id:"fire_resistance",amplifier:0,duration:-1},{id:"strength",amplifier:0,duration:-1}]}

data modify entity @e[tag=new,limit=1] Motion set from entity @s Motion
execute as @e[tag=new,limit=1] run function wallwar:fishing/data

tag @e[tag=new] remove new

kill @s