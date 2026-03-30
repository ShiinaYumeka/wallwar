
execute unless entity @s[tag=building_player] run return run execute if function wallwar:build/player/test run function wallwar:build/player/setup

effect give @a[gamemode=!spectator] glowing 11 0 true

execute if score GAME_PRO time matches 5.. run return fail

#execute as @a[gamemode=!spectator] at @s if entity @s[y=150,dy=170] run function wallwar:build/player/effect2

execute as @a[gamemode=!spectator] at @s if entity @s[y=100,dy=220] run function wallwar:build/player/effect
execute as @a[gamemode=!spectator] at @s if entity @s[y=0,dy=50] run function wallwar:build/player/effect


execute store result score #temp temp run random value 1..100
execute unless score #temp temp matches 1..50 run return fail
scoreboard players operation #temp tid = @s tid
execute as @a if score @s tid = #temp tid run effect give @s conduit_power 1 0 false
execute as @a if score @s tid = #temp tid run effect give @s resistance 1 0 true
