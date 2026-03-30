
execute unless entity @e[tag=building_wither] run return fail

execute unless function wallwar:wither/craft/test run return run function wallwar:wither/craft/setdown
execute unless entity @s[tag=wither_craft] run function wallwar:wither/craft/setup
playsound entity.wither.ambient block @a ~ ~ ~

execute unless entity @a[gamemode=!spectator,distance=..1] run return fail

execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{wither_pickaxe:1b}}}},distance=..1.5,limit=1] run function wallwar:wither/craft/pickaxe/use
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{wither_sword:1b}}}},distance=..1.5,limit=1] run function wallwar:wither/craft/sword/use
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{wither_man:1b}}}},distance=..1.5,limit=1] run function wallwar:wither/craft/man/use
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{wither_hoe:1b}}}},distance=..1.5,limit=1] run function wallwar:wither/craft/hoe/use


execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data": {"wither_skill_item_explode":1b}}}},distance=..1.5,limit=1] run function wallwar:wither/craft/explode
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data": {"wither_skill_item_fall":1b}}}},distance=..1.5,limit=1] run function wallwar:wither/craft/fall
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:command_block"}},distance=..1.5,limit=1] run function wallwar:wither/craft/fall
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:chain_command_block"}},distance=..1.5,limit=1] run function wallwar:wither/craft/fall
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data": {"wither_skill_item_player":1b}}}},distance=..1.5,limit=1] run function wallwar:wither/craft/player
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data": {"wither_skill_item_pig":1b}}}},distance=..1.5,limit=1] run function wallwar:wither/craft/pig


execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data": {"wither_player_kill":1b}}}},distance=..1.5,limit=1] run function wallwar:wither/craft/player/kill
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data": {"wither_player_hp":1b}}}},distance=..1.5,limit=1] run function wallwar:wither/craft/player/hp
execute as @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data": {"wither_player_respawn":1b}}}},distance=..1.5,limit=1] run function wallwar:wither/craft/player/respawn

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:player_head"}},distance=..1.5,limit=1] run function wallwar:wither/craft/player/update
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:wither_skeleton_skull"}},distance=..1.5,limit=1] run function wallwar:wither/craft/player/update2

