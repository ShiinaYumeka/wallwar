
execute at @s as @a[gamemode=!spectator,tag=FIGHT,distance=..2,sort=nearest,limit=1] run tag @s add respawn_user

execute if entity @s[team=red] if entity @a[team=red,tag=respawn_user] run tag @s add respawn_target
execute if entity @s[team=yellow] if entity @a[team=yellow,tag=respawn_user] run tag @s add respawn_target
execute if entity @s[team=blue] if entity @a[team=blue,tag=respawn_user] run tag @s add respawn_target
execute if entity @s[team=green] if entity @a[team=green,tag=respawn_user] run tag @s add respawn_target

execute unless entity @s[tag=respawn_target] run return run function wallwar:respawn/fail

execute at @s store result score #temp respawn if entity @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{respawn_star:1b}}}},distance=..2]

function wallwar:respawn/calc_need
execute if score #temp respawn < #need temp run return fail

function wallwar:respawn/main
execute as @a[tag=respawn_user] run function wallwar:respawn/user

tag @a remove respawn_target
tag @a remove respawn_user

function wallwar:respawn/consume_stars
