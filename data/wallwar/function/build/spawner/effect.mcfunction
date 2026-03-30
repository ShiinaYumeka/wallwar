
execute store result score #temp temp if entity @e[distance=..5,type=!item,type=!item_frame]
execute if score #temp temp matches 10.. run return fail
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{id:"minecraft:zombie_spawn_egg"}}] run return run summon zombie ^ ^ ^3 {Health:1}
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{id:"minecraft:husk_spawn_egg"}}] run return run summon husk ^ ^ ^3 {Health:1}
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{id:"minecraft:drowned_spawn_egg"}}] run return run summon drowned ^ ^ ^3 {Health:1}
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{id:"minecraft:skeleton_spawn_egg"}}] run return run summon skeleton ^ ^ ^3 {Health:1}
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{id:"minecraft:stray_spawn_egg"}}] run return run summon stray ^ ^ ^3 {Health:1}
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{id:"minecraft:bogged_spawn_egg"}}] run return run summon bogged ^ ^ ^3 {Health:1}
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{id:"minecraft:creeper_spawn_egg"}}] run return run summon creeper ^ ^ ^3 {Health:1}
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{id:"minecraft:cave_spider_spawn_egg"}}] run return run summon cave_spider ^ ^ ^3 {Health:1}
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{id:"minecraft:spider_spawn_egg"}}] run return run summon spider ^ ^ ^3 {Health:1}
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{id:"minecraft:guardian_spawn_egg"}}] run return run summon guardian ^ ^ ^3 {Health:1}
