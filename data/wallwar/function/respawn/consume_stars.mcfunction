
execute if score #need temp matches ..0 run return fail
kill @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{respawn_star:1b}}}},distance=..2,limit=1,sort=nearest]
scoreboard players remove #need temp 1
execute if score #need temp matches 1.. run function wallwar:respawn/consume_stars
