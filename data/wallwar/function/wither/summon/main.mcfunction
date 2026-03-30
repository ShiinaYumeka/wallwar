
scoreboard players operation #temp wither_health = @s wither_health
scoreboard players operation #temp wither_armor = @s wither_armor

execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_one:1b}}}}] as @a[tag=wither_man] run function wallwar:wither/summon/die

execute as 0-0-0-0-1 at @s run function wallwar:wither/summon/cast

execute if entity @s[tag=wither_skill_explode] run tag @e[tag=wither] add wither_skill_explode
execute if entity @s[tag=wither_skill_player] run tag @e[tag=wither] add wither_skill_player
execute if entity @s[tag=wither_skill_fall] run tag @e[tag=wither] add wither_skill_fall
execute if entity @s[tag=wither_skill_pig] run tag @e[tag=wither] add wither_skill_pig
scoreboard players set #wither_skill_explode time 100

execute if entity @s[tag=wither_skill_player] run schedule function wallwar:wither/skill/player/start 5s

scoreboard players operation @e[tag=wither] wither_health = #temp wither_health
scoreboard players operation @e[tag=wither] wither_health /= 2 const
#农业效果
execute if entity @s[tag=building_wither_clock] run difficulty hard
execute if entity @s[tag=building_wither_book] run function wallwar:wither/summon/book

execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_red:1b}}}}] run function wallwar:wither/summon/red
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_blue:1b}}}}] run function wallwar:wither/summon/blue
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_yellow:1b}}}}] run function wallwar:wither/summon/yellow
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_green:1b}}}}] run function wallwar:wither/summon/green
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_wither:1b}}}}] run function wallwar:wither/summon/wither

tellraw @a [{"translate":"<凋灵> 重新整理，然后再次搭建","color":"gray","bold": true}]

#execute as @a[tag=FIGHT] run function wallwar:build/wither/effect

