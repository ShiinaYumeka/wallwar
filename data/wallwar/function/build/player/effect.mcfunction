
execute if score @s building_player matches 15.. run return run function wallwar:build/player/effect2

scoreboard players add @s building_player 1
effect give @s poison 11 0 true
effect give @s hunger 11 0 true
effect give @s wither 3 0 true