
tag @s add building_respawn_user
execute if entity @s[team=red] as @e[tag=building_respawn] at @s if score @s tid matches 4 run return run function wallwar:build/respawn/effect
execute if entity @s[team=blue] as @e[tag=building_respawn] at @s if score @s tid matches 1 run return run function wallwar:build/respawn/effect
execute if entity @s[team=yellow] as @e[tag=building_respawn] at @s if score @s tid matches 3 run return run function wallwar:build/respawn/effect
execute if entity @s[team=green] as @e[tag=building_respawn] at @s if score @s tid matches 2 run return run function wallwar:build/respawn/effect

tag @s remove building_respawn_user

