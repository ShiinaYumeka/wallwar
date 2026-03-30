
execute if entity @e[type=item_frame,nbt={Item:{id:"minecraft:leather"}},distance=..1.5,limit=1] run return run function wallwar:wither/craft/pig
execute if entity @e[type=item_frame,nbt={Item:{id:"minecraft:redstone_block"}},distance=..1.5,limit=1] run return run function wallwar:wither/craft/player
execute if entity @e[type=item_frame,nbt={Item:{id:"minecraft:diamond_sword"}},distance=..1.5,limit=1] run return run function wallwar:wither/craft/explode
execute if entity @e[type=item_frame,nbt={Item:{id:"minecraft:goat_horn"}},distance=..1.5,limit=1] run return run function wallwar:wither/craft/fall

scoreboard players reset #temp temp
execute store success score #temp temp as @p[tag=wither_pickaxe,distance=..1,team=!sp,tag=FIGHT,gamemode=!spectator] run function wallwar:wither/craft/player/ench2

execute if score #temp temp matches 1.. run item replace entity @s container.0 with air

