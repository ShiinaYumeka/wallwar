
#execute if entity @s[tag=respawn_star_fail] run return fail

execute at @s positioned ~ ~-1.5 ~ as @a[gamemode=!spectator,tag=FIGHT,distance=..1,sort=nearest,limit=1] run tag @s add respawn_user

execute if entity @a[tag=respawn_user,team=red] as @a[team=red,distance=..2,gamemode=spectator,tag=!FIGHT,sort=nearest,limit=1] run tag @s add respawn_target
execute if entity @a[tag=respawn_user,team=yellow] as @a[team=yellow,distance=..2,gamemode=spectator,tag=!FIGHT,sort=nearest,limit=1] run tag @s add respawn_target
execute if entity @a[tag=respawn_user,team=blue] as @a[team=blue,distance=..2,gamemode=spectator,tag=!FIGHT,sort=nearest,limit=1] run tag @s add respawn_target
execute if entity @a[tag=respawn_user,team=green] as @a[team=green,distance=..2,gamemode=spectator,tag=!FIGHT,sort=nearest,limit=1] run tag @s add respawn_target

execute as @a[tag=respawn_target] run function wallwar:respawn/main
execute if entity @a[tag=respawn_target] as @a[tag=respawn_user] run function wallwar:respawn/user
execute unless entity @a[tag=respawn_target] run return run function wallwar:respawn/fail

tag @a remove respawn_target
tag @a remove respawn_user
kill @s

