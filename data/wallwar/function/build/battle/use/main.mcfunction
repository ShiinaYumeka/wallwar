
execute at @s run tag @e[type=item_frame,nbt={Item:{count:1}},distance=4..6,sort=random,limit=1] add building_battle_selected

execute if data entity @e[tag=building_battle_selected,limit=1] Item{id:"minecraft:flint"} run function wallwar:build/battle/use/flint
execute if data entity @e[tag=building_battle_selected,limit=1] Item{id:"minecraft:leather"} run function wallwar:build/battle/use/leather
execute if data entity @e[tag=building_battle_selected,limit=1] Item{id:"minecraft:water_bucket"} run function wallwar:build/battle/use/bucket
execute if data entity @e[tag=building_battle_selected,limit=1] Item{id:"minecraft:iron_ingot"} run function wallwar:build/battle/use/iron
execute if data entity @e[tag=building_battle_selected,limit=1] Item{id:"minecraft:rotten_flesh"} run function wallwar:build/battle/use/flesh
execute if data entity @e[tag=building_battle_selected,limit=1] Item{id:"minecraft:bone"} run function wallwar:build/battle/use/bone
execute if data entity @e[tag=building_battle_selected,limit=1] Item{id:"minecraft:string"} run function wallwar:build/battle/use/string
execute if data entity @e[tag=building_battle_selected,limit=1] Item{id:"minecraft:apple"} run function wallwar:build/battle/use/apple

kill @e[tag=building_battle_selected]