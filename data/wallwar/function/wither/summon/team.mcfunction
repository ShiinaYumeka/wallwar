
scoreboard players operation #tid tid = @s tid

scoreboard players operation @e[tag=wither] tid = #tid tid
execute as @e[tag=wither] run function wallwar:system/team/join

execute unless entity @s[tag=building_wither_carrot] run return fail

scoreboard players set #wither_temp temp 0
execute store result score #wither_temp temp if entity @a[gamemode=!spectator,team=!sp]
execute if score #wither_temp temp matches 1..40 run function wallwar:wither/summon/carrot

scoreboard players operation @e[tag=new] tid = #tid tid
execute as @e[tag=new] run function wallwar:system/team/join
tag @e[tag=new] remove new
