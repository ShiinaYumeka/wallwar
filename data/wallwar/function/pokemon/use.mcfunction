
particle firework ~ ~ ~ 0 0 0 0.4 30 normal
playsound entity.player.levelup player @a ~ ~ ~

#data merge entity @s {Item:{components:{"minecraft:custom_data":{pokemon_entity:{}}}}}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"zombie"} run summon zombie ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"skeleton"} run summon skeleton ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"creeper"} run summon creeper ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"spider"} run summon spider ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"cave_spider"} run summon cave_spider ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"bogged"} run summon bogged ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"breeze"} run summon breeze ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"chicken"} run summon chicken ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"cow"} run summon cow ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"dolphin"} run summon dolphin ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"drowned"} run summon drowned ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"enderman"} run summon enderman ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"evoker"} run summon evoker ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"horse"} run summon horse ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"husk"} run summon husk ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"iron_golem"} run summon iron_golem ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"pillager"} run summon pillager ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"pig"} run summon pig ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"ravager"} run summon ravager ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"sheep"} run summon sheep ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"snow_golem"} run summon snow_golem ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"stray"} run summon stray ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"vex"} run summon vex ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"vindicator"} run summon vindicator ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"villager"} run summon villager ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"witch"} run summon witch ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"zombie_villager"} run summon zombie_villager ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"pufferfish"} run summon pufferfish ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"silverfish"} run summon silverfish ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"ghast"} run summon ghast ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"happy_ghast"} run summon happy_ghast ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}
execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity{id:"guardian"} run summon guardian ~ ~ ~ {Tags:["new"],DeathLootTable:"empty"}

data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt.Tags append value "new"
data modify entity @n[tag=new] {} merge from entity @s Item.components."minecraft:custom_data".pokemon_entity.nbt

execute store result score @e[tag=new] tid run data get entity @s Item.components."minecraft:custom_data".pokemon_entity.team 1


data modify entity @e[tag=new,limit=1] CustomNameVisible set value true
#data remove entity @s Item.components."minecraft:custom_data".pokemon_entity

execute if data entity @s Item.components.minecraft:custom_data.pokemon_master at @s run function wallwar:pokemon/master/use

tp @e[tag=new] @s
execute as @e[tag=new] run function wallwar:pokemon/use2

#scoreboard players reset @s time
kill @s
