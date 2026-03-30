

title @a title {"translate": "毁灭","bold": true,"color": "gray"}

scoreboard players reset #wither_skill_explode time
execute if entity @s[team=red] at @p[team=!red,team=!sp,gamemode=!spectator,tag=FIGHT] run function wallwar:wither/skill/explode/cast
execute if entity @s[team=blue] at @p[team=!blue,team=!sp,gamemode=!spectator,tag=FIGHT] run function wallwar:wither/skill/explode/cast
execute if entity @s[team=yellow] at @p[team=!yellow,team=!sp,gamemode=!spectator,tag=FIGHT] run function wallwar:wither/skill/explode/cast
execute if entity @s[team=green] at @p[team=!green,team=!sp,gamemode=!spectator,tag=FIGHT] run function wallwar:wither/skill/explode/cast
execute if entity @s[team=wither] at @p[team=!wither,team=!sp,gamemode=!spectator,tag=FIGHT] run function wallwar:wither/skill/explode/cast

