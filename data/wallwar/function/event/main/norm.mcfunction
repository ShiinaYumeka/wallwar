


execute store result score #temp temp run random value 1..12

execute if score #1_event time = #temp temp run scoreboard players add #temp temp 1
execute if score #temp temp matches 13.. run scoreboard players set #temp temp 1
execute if score #2_event time = #temp temp run scoreboard players add #temp temp 1
execute if score #temp temp matches 13.. run scoreboard players set #temp temp 1
execute if score #1_event time = #temp temp run scoreboard players add #temp temp 1
execute if score #temp temp matches 13.. run scoreboard players set #temp temp 1

execute if score #temp temp matches 1 as 0-0-0-0-1 at @s run function wallwar:event/armor_damage/use
execute if score #temp temp matches 2 as 0-0-0-0-1 at @s run function wallwar:event/drophead/use
execute if score #temp temp matches 3 as 0-0-0-0-1 at @s run function wallwar:event/ghost/use
execute if score #temp temp matches 4 as 0-0-0-0-1 at @s run function wallwar:event/pig/use
execute if score #temp temp matches 5 as 0-0-0-0-1 at @s run function wallwar:event/skeleton/use
execute if score #temp temp matches 6 as 0-0-0-0-1 at @s run function wallwar:event/respawn/use
execute if score #temp temp matches 7 as 0-0-0-0-1 at @s run function wallwar:event/water/use
execute if score #temp temp matches 8 as 0-0-0-0-1 at @s run function wallwar:event/football
execute if score #temp temp matches 9 as 0-0-0-0-1 at @s run function wallwar:event/invisible
execute if score #temp temp matches 10 as 0-0-0-0-1 at @s run function wallwar:event/space
execute if score #temp temp matches 11 as 0-0-0-0-1 at @s run function wallwar:event/unsafe_fall
execute if score #temp temp matches 12 as 0-0-0-0-1 at @s run function wallwar:event/gift/use

execute unless score #1_event time matches 1..12 run return run scoreboard players operation #1_event time = #temp temp
scoreboard players operation #2_event time = #temp temp
