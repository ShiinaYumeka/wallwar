
particle cloud ~ ~ ~ 0.1 0.1 0.1 0.3 10 normal
playsound block.fire.extinguish player @a ~ ~ ~

execute as @p[team=!sp,gamemode=!spectator] run tag @s add observe_user

execute if entity @p[tag=observe_user,team=red] as @a[team=!red,gamemode=!spectator] run function wallwar:observer/main
execute if entity @p[tag=observe_user,team=yellow] as @a[team=!yellow,gamemode=!spectator] run function wallwar:observer/main
execute if entity @p[tag=observe_user,team=blue] as @a[team=!blue,gamemode=!spectator] run function wallwar:observer/main
execute if entity @p[tag=observe_user,team=green] as @a[team=!green,gamemode=!spectator] run function wallwar:observer/main

execute if entity @p[tag=observe_user] run data remove entity @s Item.components."minecraft:custom_data"

tag @a remove observe_user
kill @s

