
execute unless entity @s[type=player,gamemode=!spectator,team=!sp] run return fail

execute if entity @s[predicate=wallwar:in_water] run return run function wallwar:ench/freeze/apply

execute store result score #hp temp run data get entity @s Health 1000
execute store result score #max temp run attribute @s max_health get 10
execute unless score #max temp matches 1.. run return fail
scoreboard players operation #hp temp /= #max temp
execute unless score #hp temp matches ..39 run return fail

function wallwar:ench/freeze/apply
