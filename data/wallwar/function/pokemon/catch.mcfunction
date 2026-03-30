
tag @n[type=!player,type=!item,type=!falling_block,type=!wither,type=!wither_skull,type=!warden,type=!#arrows,dx=0,dy=0,dz=0] add pokemon_target
#execute if entity @n[tag=pokemon_target] on passengers run tag @n[tag=pokemon_target] remove pokemon_target

data merge entity @s {Item:{components:{"minecraft:custom_data":{pokemon_entity:{is:1b,team:"",id:"",nbt:{}}}}}}

execute if entity @n[type=zombie,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "zombie"
execute if entity @n[type=skeleton,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "skeleton"
execute if entity @n[type=creeper,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "creeper"
execute if entity @n[type=spider,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "spider"
execute if entity @n[type=breeze,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "breeze"
execute if entity @n[type=bogged,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "bogged"
execute if entity @n[type=cave_spider,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "cave_spider"
execute if entity @n[type=minecraft:chicken,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "chicken"
execute if entity @n[type=minecraft:cow,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "cow"
execute if entity @n[type=minecraft:dolphin,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "dolphin"
execute if entity @n[type=minecraft:drowned,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "drowned"
execute if entity @n[type=minecraft:enderman,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "enderman"
execute if entity @n[type=minecraft:evoker,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "evoker"
execute if entity @n[type=minecraft:horse,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "horse"
execute if entity @n[type=minecraft:husk,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "husk"
execute if entity @n[type=minecraft:iron_golem,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "iron_golem"
execute if entity @n[type=minecraft:pillager,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "pillager"
execute if entity @n[type=minecraft:pig,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "pig"
execute if entity @n[type=minecraft:ravager,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "ravager"
execute if entity @n[type=minecraft:sheep,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "sheep"
execute if entity @n[type=minecraft:stray,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "stray"
execute if entity @n[type=minecraft:snow_golem,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "snow_golem"
execute if entity @n[type=minecraft:vex,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "vex"
execute if entity @n[type=minecraft:vindicator,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "vindicator"
execute if entity @n[type=minecraft:villager,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "villager"
execute if entity @n[type=minecraft:witch,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "witch"
execute if entity @n[type=minecraft:zombie_villager,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "zombie_villager"
execute if entity @n[type=minecraft:pufferfish,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "pufferfish"
execute if entity @n[type=minecraft:silverfish,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "silverfish"
execute if entity @n[type=minecraft:ghast,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "ghast"
execute if entity @n[type=minecraft:happy_ghast,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "happy_ghast"
execute if entity @n[type=minecraft:guardian,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.id set value "guardian"
#tellraw @a {"score": {"name": "@s","objective": "temp"}}
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.team set value 0
scoreboard players operation #temp tid = @s tid
execute as @n[tag=pokemon_target] unless score @s tid matches 1.. run scoreboard players operation @s tid = #temp tid
execute unless score @s tid = @n[tag=pokemon_target] tid run return run data remove entity @s Item.components."minecraft:custom_data".pokemon_entity
execute store result entity @s Item.components."minecraft:custom_data".pokemon_entity.team byte 1 run scoreboard players get @s tid




data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt set from entity @n[tag=pokemon_target] {}
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.equipment set from entity @n[tag=pokemon_target] equipment
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.active_effects set from entity @n[tag=pokemon_target] active_effects
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.attributes set from entity @n[tag=pokemon_target] attributes
#execute if data entity @n[tag=pokemon_target] attributes[{id:"minecraft:max_health"}].base run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Health set from entity @n[tag=pokemon_target] attributes[{id:"minecraft:max_health"}].base
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.CustomName set from entity @n[tag=pokemon_target] CustomName
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.CustomNameVisible set from entity @n[tag=pokemon_target] CustomNameVisible
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.ignited set from entity @n[tag=pokemon_target] ignited
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Xp set from entity @n[tag=pokemon_target] Xp
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Offers set from entity @n[tag=pokemon_target] Offers
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.VillagerData set from entity @n[tag=pokemon_target] VillagerData
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Gossips set from entity @n[tag=pokemon_target] Gossips
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.powered set from entity @n[tag=pokemon_target] powered
#data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.AbsorptionAmount set from entity @n[tag=pokemon_target] AbsorptionAmount
#data remove entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Tags
data remove entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Pos
data remove entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Rotation
data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.IsBaby set from entity @n[tag=pokemon_target] IsBaby
data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.CanPickUpLoot set from entity @n[tag=pokemon_target] CanPickUpLoot
execute if data entity @n[tag=pokemon_target] Fuse run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Fuse set value 20

#execute if data entity @n[tag=pokemon_target] Offers run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.AssignProfessionWhenSpawned set value true


data modify entity @s Item.count set value 1b

execute if data entity @s Item.components.minecraft:custom_data.pokemon_master run data merge entity @s {Item:{components:{"custom_name":{"translate":"大师球（已满）","italic": false,"color": "light_purple"}}}}
execute unless data entity @s Item.components.minecraft:custom_data.pokemon_master run data merge entity @s {Item:{components:{"custom_name":{"translate":"精灵球（已满）","italic": false,"color": "aqua"}}}}

data remove entity @s Item.components."minecraft:custom_data".pokemon_ball

particle firework ~ ~ ~ 0 0 0 0.4 30 normal
playsound entity.player.levelup player @a ~ ~ ~

execute as @n[tag=pokemon_target] on passengers run ride @s dismount
tp @e[tag=pokemon_target] ~ ~-200 ~
kill @e[tag=pokemon_target]
scoreboard players reset @s time
