
execute store result score #temp sid run data get entity @s Item.components."minecraft:custom_data".sid 1
execute as @e[tag=pokemon_master_summon,sort=nearest] if score @s sid = #temp sid run tag @s add pokemon_target

data modify entity @s Item merge value {id:"sniffer_egg",count:1b,components:{"max_stack_size":1,"item_name":{"translate":"大师球","italic": false,"color": "light_purple"},"minecraft:custom_data":{"wallwar_item":1b,"pokemon_master":1b,pokemon_entity:{is:1b,team:"",id:"",nbt:{}}}}}

execute unless entity @e[tag=pokemon_target] run return run function wallwar:pokemon/master/call2

data remove entity @s Item.components.minecraft:custom_data.pokemon_master_call

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
data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.team set value "sp"
execute if entity @n[team=blue,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.team set value "blue"
execute if entity @n[team=green,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.team set value "green"
execute if entity @n[team=yellow,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.team set value "yellow"
execute if entity @n[team=red,tag=pokemon_target] run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.team set value "red"

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
data remove entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Tags
data remove entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Pos
data remove entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Rotation
data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.IsBaby set from entity @n[tag=pokemon_target] IsBaby
data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.CanPickUpLoot set from entity @n[tag=pokemon_target] CanPickUpLoot
execute if data entity @n[tag=pokemon_target] Fuse run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Fuse set value 20

#execute if data entity @n[tag=pokemon_target] Offers run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.AssignProfessionWhenSpawned set value true



execute store result score #temp temp run data get entity @n[tag=pokemon_target] Health 100
scoreboard players add #temp temp 1000
execute store result entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Health double 0.01 run scoreboard players get #temp temp

#data remove entity @s Item.components."minecraft:custom_data".pokemon_ball

particle firework ~ ~ ~ 0 0 0 0.4 30 normal
playsound entity.player.levelup player @a ~ ~ ~

execute as @n[tag=pokemon_target] on passengers run ride @s dismount
tp @e[tag=pokemon_target] ~ ~-200 ~
kill @e[tag=pokemon_target]
scoreboard players reset @s time



playsound item.honey_bottle.drink player @a ~ ~ ~ 1 2

data modify entity @s Item.components."minecraft:item_name" set value {"translate":"大师球（已满）","italic": false,"color": "light_purple"}
data modify entity @s Item.components."minecraft:max_damage" set value 10b
execute store result score #temp temp run data get entity @s Item.components."minecraft:damage" 1
scoreboard players add #temp temp 1
execute store result entity @s Item.components."minecraft:damage" byte 1 run scoreboard players get #temp temp
execute if score #temp temp matches 10.. run data remove entity @s Item.components.minecraft:custom_data.pokemon_master

data modify entity @s Owner set from entity @s Thrower
data modify entity @s Motion[0] set value 0
data modify entity @s Motion[1] set value 0
data modify entity @s Motion[2] set value 0
data modify entity @s PickupDelay set value 0



#execute at @p positioned ^ ^ ^1 run tp @s ~ ~1 ~ ~ ~
tag @s remove pokemon_throw

#scoreboard players set @s time 0

