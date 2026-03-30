
execute if entity @s[tag=wither_skill_explode] run scoreboard players add #wither_skill_explode time 1
execute if score #wither_skill_explode time matches 1200.. run function wallwar:wither/skill/explode/use

execute as @e[tag=wither_explode] at @s run function wallwar:wither/skill/explode/main


execute if entity @s[tag=wither_skill_fall] run scoreboard players add #wither_skill_fall time 1
execute if score #wither_skill_fall time matches 200.. run function wallwar:wither/skill/fall/use


execute if entity @s[tag=wither_skill_pig] run scoreboard players add #wither_skill_pig time 1
execute if score #wither_skill_pig time matches 1000.. run function wallwar:wither/skill/pig/use


#execute store result score #wither_hp time run data get entity @s Health 1
#execute if entity @s[tag=wither_skill_player] if score #wither_hp_pre time > @s wither_health if score #wither_hp time < @s wither_health run function wallwar:wither/skill/player/use
#execute store result score #wither_hp_pre time run data get entity @s Health 1
