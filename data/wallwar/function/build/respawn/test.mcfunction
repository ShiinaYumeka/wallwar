
execute unless block ^ ^ ^-0.5 mossy_stone_bricks run return fail
execute unless block ^ ^ ^-1.5 mossy_cobblestone_wall run return fail

execute unless block ^ ^ ^-2.5 #respawn_building run return fail
execute unless block ^ ^-1 ^-2.5 mossy_stone_bricks run return fail
execute unless block ^ ^1 ^-2.5 mossy_stone_bricks run return fail
execute unless block ^-1 ^ ^-2.5 mossy_stone_bricks run return fail
execute unless block ^1 ^ ^-2.5 mossy_stone_bricks run return fail
execute unless block ^1 ^-1 ^-2.5 mossy_cobblestone_slab run return fail
execute unless block ^1 ^1 ^-2.5 mossy_cobblestone_slab run return fail
execute unless block ^-1 ^-1 ^-2.5 mossy_cobblestone_slab run return fail
execute unless block ^-1 ^1 ^-2.5 mossy_cobblestone_slab run return fail


execute unless block ^ ^ ^-3.5 mossy_cobblestone run return fail
execute unless block ^ ^-1 ^-3.5 mossy_cobblestone run return fail
execute unless block ^ ^1 ^-3.5 mossy_cobblestone run return fail
execute unless block ^1 ^ ^-3.5 mossy_cobblestone run return fail
execute unless block ^1 ^-1 ^-3.5 mossy_cobblestone run return fail
execute unless block ^1 ^1 ^-3.5 mossy_cobblestone run return fail
execute unless block ^-1 ^ ^-3.5 mossy_cobblestone run return fail
execute unless block ^-1 ^-1 ^-3.5 mossy_cobblestone run return fail
execute unless block ^-1 ^1 ^-3.5 mossy_cobblestone run return fail


execute unless block ^ ^-2 ^-3.5 mossy_cobblestone run return fail
execute unless block ^1 ^-2 ^-3.5 mossy_cobblestone run return fail
execute unless block ^-1 ^-2 ^-3.5 mossy_cobblestone run return fail
execute unless block ^ ^2 ^-3.5 mossy_cobblestone run return fail
execute unless block ^1 ^2 ^-3.5 mossy_cobblestone run return fail
execute unless block ^-1 ^2 ^-3.5 mossy_cobblestone run return fail
execute unless block ^2 ^ ^-3.5 mossy_cobblestone run return fail
execute unless block ^2 ^-1 ^-3.5 mossy_cobblestone run return fail
execute unless block ^2 ^1 ^-3.5 mossy_cobblestone run return fail
execute unless block ^-2 ^ ^-3.5 mossy_cobblestone run return fail
execute unless block ^-2 ^-1 ^-3.5 mossy_cobblestone run return fail
execute unless block ^-2 ^1 ^-3.5 mossy_cobblestone run return fail


execute unless block ^2 ^2 ^-3.5 mossy_cobblestone_slab run return fail
execute unless block ^-2 ^2 ^-3.5 mossy_cobblestone_slab run return fail
execute unless block ^2 ^-2 ^-3.5 mossy_cobblestone_slab run return fail
execute unless block ^-2 ^-2 ^-3.5 mossy_cobblestone_slab run return fail

execute positioned ~ ~-2 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{respawn_star:1b}}}}] run return run function wallwar:build/respawn/test2
execute positioned ~ ~-2 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] run return run function wallwar:build/respawn/test2
