
scoreboard players set lowY_Pro time 12000


#execute as @p[gamemode=!spectator] run tag @s add building_temp
execute if score #BOSS_MODE time matches 1.. at 0-0-0-0-1 run return run function wallwar:build/sand/start/boss

execute if score build_sand tid matches 1 at 0-0-0-0-1 run function wallwar:build/sand/start/blue
execute if score build_sand tid matches 4 at 0-0-0-0-1 run function wallwar:build/sand/start/red
execute if score build_sand tid matches 2 at 0-0-0-0-1 run function wallwar:build/sand/start/green
execute if score build_sand tid matches 3 at 0-0-0-0-1 run function wallwar:build/sand/start/yellow

#tag @a remove building_temp

