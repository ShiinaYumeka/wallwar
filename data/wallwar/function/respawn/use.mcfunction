
#execute if entity @s[tag=respawn_star_fail] run return fail

execute at @s positioned ~ ~-1.5 ~ as @a[gamemode=!spectator,tag=FIGHT,distance=..1,sort=nearest,limit=1] run tag @s add respawn_user

execute if entity @a[tag=respawn_user,team=red] as @a[team=red,distance=..2,gamemode=spectator,tag=!FIGHT,sort=nearest,limit=1] run tag @s add respawn_target
execute if entity @a[tag=respawn_user,team=yellow] as @a[team=yellow,distance=..2,gamemode=spectator,tag=!FIGHT,sort=nearest,limit=1] run tag @s add respawn_target
execute if entity @a[tag=respawn_user,team=blue] as @a[team=blue,distance=..2,gamemode=spectator,tag=!FIGHT,sort=nearest,limit=1] run tag @s add respawn_target
execute if entity @a[tag=respawn_user,team=green] as @a[team=green,distance=..2,gamemode=spectator,tag=!FIGHT,sort=nearest,limit=1] run tag @s add respawn_target

execute unless entity @a[tag=respawn_target] run return run function wallwar:respawn/fail

execute as @a[tag=respawn_target,limit=1] at @s store result score #temp respawn if entity @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{respawn_star:1b}}}},distance=..2]
execute as @a[tag=respawn_target,limit=1] run function wallwar:respawn/calc_need
execute if score #temp respawn < #need temp run return run function wallwar:respawn/fail

execute as @a[tag=respawn_target] run function wallwar:respawn/main
execute if entity @a[tag=respawn_target] as @a[tag=respawn_user] run function wallwar:respawn/user

tag @a remove respawn_target
tag @a remove respawn_user

function wallwar:respawn/consume_stars

kill @s
