

team join yellow @e[tag=wither]

execute unless entity @s[tag=building_wither_carrot] run return fail

execute store result score #wither_temp temp if entity @a[gamemode=!spectator,team=!yellow]
execute if score #wither_temp temp matches 1.. run function wallwar:wither/summon/carrot
team join yellow @e[tag=new]
tag @e[tag=new] remove new



