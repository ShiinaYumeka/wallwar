
execute if entity @s[team=!sp,gamemode=!spectator,y=150,dy=30] run function wallwar:system/y/air
execute if entity @s[team=!sp,gamemode=!spectator] at 0-0-0-0-1 run function wallwar:escape/test
