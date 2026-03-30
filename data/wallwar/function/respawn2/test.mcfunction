

execute at @s as @a[gamemode=!spectator,tag=FIGHT,distance=..2,sort=nearest,limit=1] run tag @s add respawn_user

execute if entity @s[team=red] if entity @a[team=red,tag=respawn_user] run tag @s add respawn_target
execute if entity @s[team=yellow] if entity @a[team=yellow,tag=respawn_user] run tag @s add respawn_target
execute if entity @s[team=blue] if entity @a[team=blue,tag=respawn_user] run tag @s add respawn_target
execute if entity @s[team=green] if entity @a[team=green,tag=respawn_user] run tag @s add respawn_target

execute unless entity @s[tag=respawn_target] run return run function wallwar:respawn2/fail

execute if entity @s[team=red] as @a[gamemode=!spectator,tag=FIGHT,team=red,tag=!respawn_user] run return run function wallwar:respawn2/fail
execute if entity @s[team=yellow] as @a[gamemode=!spectator,tag=FIGHT,team=yellow,tag=!respawn_user] run return run function wallwar:respawn2/fail
execute if entity @s[team=blue] as @a[gamemode=!spectator,tag=FIGHT,team=blue,tag=!respawn_user] run return run function wallwar:respawn2/fail
execute if entity @s[team=green] as @a[gamemode=!spectator,tag=FIGHT,team=green,tag=!respawn_user] run return run function wallwar:respawn2/fail

function wallwar:respawn2/main
execute as @a[tag=respawn_user] run function wallwar:respawn2/user

tag @a remove respawn_target
tag @a remove respawn_user

kill @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{respawn_star_head:1b}}}},distance=..2]


