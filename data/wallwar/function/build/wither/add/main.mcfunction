
execute if entity @e[type=item_frame,distance=..1,nbt={Item:{id:"minecraft:netherite_hoe"}}] run function wallwar:build/wither/add/netherite
execute if entity @e[type=item_frame,distance=..1,nbt={Item:{components:{"minecraft:food":{"can_always_eat":true}},id:"minecraft:golden_carrot"}}] run function wallwar:build/wither/add/carrot
execute if entity @e[type=item_frame,distance=..1,nbt={Item:{components:{"minecraft:food":{"can_always_eat":true}},id:"minecraft:book"}}] run function wallwar:build/wither/add/book
execute if entity @e[type=item_frame,distance=..1,nbt={Item:{components:{"minecraft:custom_data":{clock:3b}}}}] run function wallwar:build/wither/add/clock
