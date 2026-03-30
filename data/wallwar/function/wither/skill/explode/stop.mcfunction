

execute if entity @e[tag=wither,team=red] as @p[team=!red,team=!sp,gamemode=!spectator,tag=FIGHT] at @s run function wallwar:wither/skill/explode/stop2
execute if entity @e[tag=wither,team=blue] as @p[team=!blue,team=!sp,gamemode=!spectator,tag=FIGHT] at @s run function wallwar:wither/skill/explode/stop2
execute if entity @e[tag=wither,team=yellow] as @p[team=!yellow,team=!sp,gamemode=!spectator,tag=FIGHT] at @s run function wallwar:wither/skill/explode/stop2
execute if entity @e[tag=wither,team=green] as @p[team=!green,team=!sp,gamemode=!spectator,tag=FIGHT] at @s run function wallwar:wither/skill/explode/stop2
execute if entity @e[tag=wither,team=wither] as @p[team=!wither,team=!sp,gamemode=!spectator,tag=FIGHT] at @s run function wallwar:wither/skill/explode/stop2

kill @s