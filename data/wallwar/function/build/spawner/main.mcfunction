

#data remove entity @s Glowing
execute unless function wallwar:build/spawner/test run return fail
execute if score #wither_no_use time matches 1.. run return fail


playsound block.trial_spawner.spawn_item block @a ~ ~ ~

#effect give @a[gamemode=!spectator] glowing 11 0 true
#scoreboard players reset #spawner_glow temp
function wallwar:build/spawner/effect

#execute if score #spawner_glow temp matches 1 run data modify entity @s Glowing set value 1b
