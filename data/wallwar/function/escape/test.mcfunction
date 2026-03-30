
execute if score @s escape_timer matches 1.. run scoreboard players remove @s escape_timer 1
execute if score @s ender_used matches 1.. run function wallwar:escape/ender

execute if entity @s[tag=escape_warned] run return fail

execute positioned ~-300 -64 ~-300 if entity @s[dx=298,dy=300,dz=298] run function wallwar:escape/green
execute positioned ~-300 -64 ~1 if entity @s[dx=298,dy=300,dz=298] run function wallwar:escape/yellow
execute positioned ~1 -64 ~-300 if entity @s[dx=298,dy=300,dz=298] run function wallwar:escape/blue
execute positioned ~1 -64 ~1 if entity @s[dx=298,dy=300,dz=298] run function wallwar:escape/red

