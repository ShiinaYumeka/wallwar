
particle large_smoke ~ ~0.5 ~ 0 0.3 0 1 0 normal
particle large_smoke ~ ~0.1 ~ 0 0.3 0 1 0 normal
particle large_smoke ~0.3 ~0.1 ~0.3 0 0.3 0 1 0 normal
particle large_smoke ~-0.3 ~0.1 ~0.3 0 0.3 0 1 0 normal
particle large_smoke ~0.3 ~0.1 ~-0.3 0 0.3 0 1 0 normal
particle large_smoke ~-0.3 ~0.1 ~-0.3 0 0.3 0 1 0 normal

scoreboard players remove @s time 1
execute unless score @s time matches 1.. run function wallwar:wither/skill/explode/stop

scoreboard players operation #wither_skill_explode temp = @s time
scoreboard players operation #wither_skill_explode temp %= 20 const
execute if score @s time matches ..100 if score #wither_skill_explode temp matches 1 at @s run function wallwar:wither/skill/explode/main2
