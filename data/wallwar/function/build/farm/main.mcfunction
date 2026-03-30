

data remove entity @s Glowing
execute unless function wallwar:build/farm/test run return fail
execute if score #wither_no_use time matches 1.. run return fail


playsound block.grass.place block @a ~ ~ ~

#effect give @a[gamemode=!spectator] glowing 11 0 true

execute store result score #temp temp run random value 1..100
execute if blocks ^2 ^ ^-0.5 ^-2 ^ ^-4.5 ^2 ^1 ^-0.5 all if blocks ^2 ^ ^-0.5 ^-2 ^ ^-4.5 ^2 ^2 ^-0.5 all run return run function wallwar:build/farm/effect

execute if score #temp temp matches 1..50 run summon item ^ ^ ^0.5 {Item:{id:"bread",count:1}}


#execute if score #farm_glow temp matches 1 run data modify entity @s Glowing set value 1b

