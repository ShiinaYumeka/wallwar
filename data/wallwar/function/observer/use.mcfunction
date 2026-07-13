
particle cloud ~ ~ ~ 0.1 0.1 0.1 0.3 10 normal
playsound block.fire.extinguish player @a ~ ~ ~

execute as @p[team=!sp,gamemode=!spectator] run tag @s add observe_user

scoreboard players operation #tid tid = @p[tag=observe_user] tid
execute as @a[team=!sp,gamemode=!spectator,sort=furthest] unless score @s tid = #tid tid run function wallwar:observer/main

execute if entity @p[tag=observe_user] run function wallwar:observer/main2

tag @a remove observe_user
tag @a remove observer_target_temp
#kill @s

