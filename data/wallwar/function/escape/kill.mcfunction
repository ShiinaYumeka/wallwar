
tellraw @a [{"translate":"[战墙] "},{"selector":"@s"},{"translate":" 迷失在无尽的虚空中。","color":"dark_gray"}]


execute if entity @s[tag=escape_red] at @s at @p[team=red,gamemode=!spectator] run function wallwar:death/escape_head
execute if entity @s[tag=escape_yellow] at @s at @p[team=yellow,gamemode=!spectator] run function wallwar:death/escape_head
execute if entity @s[tag=escape_blue] at @s at @p[team=blue,gamemode=!spectator] run function wallwar:death/escape_head
execute if entity @s[tag=escape_green] at @s at @p[team=green,gamemode=!spectator] run function wallwar:death/escape_head
tag @s remove escape_warned
tag @s remove escape_red
tag @s remove escape_yellow
tag @s remove escape_blue
tag @s remove escape_green
#clear @s
kill @s