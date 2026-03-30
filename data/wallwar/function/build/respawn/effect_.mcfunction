
#particle block_marker{block_state:barrier}
kill @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{respawn_star:1b}}}}]
kill @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}]

execute positioned ~1 ~1 ~ if block ~ ~ ~ piglin_head as @a[tag=building_respawn_user] run return run function wallwar:build/respawn/armor
execute positioned ~-1 ~1 ~ if block ~ ~ ~ piglin_head as @a[tag=building_respawn_user] run return run function wallwar:build/respawn/armor
execute positioned ~ ~1 ~1 if block ~ ~ ~ piglin_head as @a[tag=building_respawn_user] run return run function wallwar:build/respawn/armor
execute positioned ~ ~1 ~-1 if block ~ ~ ~ piglin_head as @a[tag=building_respawn_user] run return run function wallwar:build/respawn/armor
