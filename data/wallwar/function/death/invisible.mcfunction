

effect give @s[tag=!no_nightvision] night_vision infinite 2 true
execute if entity @s[tag=building_respawn_user] run function wallwar:build/respawn/effect2
effect give @s invisibility 15 1 true

execute if score GAME_PRO time matches 1..2 at 0-0-0-0-1 positioned ~-16 150 ~-16 if entity @s[dx=32,dy=200,dz=32] at 0-0-0-0-1 run function wallwar:death/back

scoreboard players reset @s invisible

tag @s remove escape_warned
tag @s remove escape_red
tag @s remove escape_yellow
tag @s remove escape_blue
tag @s remove escape_green
