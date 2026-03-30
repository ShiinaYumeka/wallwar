
#execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{respawn_star:1b}}}}] run return run function wallwar:respawn/use
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{spawn_egg:1b}}}}] run return run function wallwar:spawn/use
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{pokemon_ball:1b}}}}] run return run function wallwar:pokemon/main
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{pokemon_entity:{is:1b}}}}}] run return run function wallwar:pokemon/main2
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{pokemon_master_call:1b}}}}] run return run function wallwar:pokemon/master/call
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{observer:1b}}}}] run return run function wallwar:observer/use
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{fishing_zombie:1b}}}}] run return run function wallwar:fishing/zombie
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{death_fight_end:1b}}}}] run return run function wallwar:system/end/item
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{soul_bag:1b}}}}] run return run function wallwar:bag/soul
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{exp_bag:1b}}}}] run return run function wallwar:bag/exp
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{fix_bag:1b}}}}] run return run function wallwar:bag/fix
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{protection_bag:1b}}}}] run return run function wallwar:bag/protection

