

team join red @e[tag=wither]

execute unless entity @s[tag=building_wither_carrot] run return fail

execute store result score #wither_temp temp if entity @a[gamemode=!spectator,team=!red]
execute if score #wither_temp temp matches 1.. run function wallwar:wither/summon/carrot
team join red @e[tag=new]
tag @e[tag=new] remove new



