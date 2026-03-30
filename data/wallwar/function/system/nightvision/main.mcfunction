
scoreboard players reset @s nightvision
scoreboard players enable @s nightvision

execute if entity @s[tag=no_nightvision] run return run function wallwar:system/nightvision/yes
execute if entity @s[tag=!no_nightvision] run return run function wallwar:system/nightvision/no
