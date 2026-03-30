

execute store result score #temp temp run random value 1..50



execute if score #temp temp matches 1 run return run effect give @a[distance=..5,team=!sp] blindness 3 0
execute if score #temp temp matches 2 run return run effect give @a[distance=..5,team=!sp] slowness 1 4
execute if score #temp temp matches 3 run return run effect give @a[distance=..5,team=!sp] wither 2 0
execute if score #temp temp matches 4 run playsound entity.creeper.primed player @a ~ ~ ~ 2 1
execute if score #temp temp matches 5 run return run summon zombie ~ ~ ~ {IsBaby:true}
execute if score #temp temp matches 6 run return run effect give @a[distance=..5,team=!sp] glowing 5 0

execute unless score #temp temp matches 4 run return fail

execute store result score #temp temp run random value 1..4

execute if score #temp temp matches 1 run function wallwar:wither/skill/player/give2
execute if score #temp temp matches 2 run summon creeper ~ ~ ~ {ignited:true}

