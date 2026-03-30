
tellraw @a [{"translate":"[战墙] "},{"selector":"@s"},{"translate":" 百骑劫空营，笑死天下英。","color":"white"}]

execute if entity @s[tag=escape_red] at @s at @p[team=red,gamemode=!spectator,distance=..32] run function wallwar:death/escape_head
execute if entity @s[tag=escape_yellow] at @s at @p[team=yellow,gamemode=!spectator,distance=..32] run function wallwar:death/escape_head
execute if entity @s[tag=escape_blue] at @s at @p[team=blue,gamemode=!spectator,distance=..32] run function wallwar:death/escape_head
execute if entity @s[tag=escape_green] at @s at @p[team=green,gamemode=!spectator,distance=..32] run function wallwar:death/escape_head

tag @s remove escape_warned
tag @s remove escape_red
tag @s remove escape_yellow
tag @s remove escape_blue
tag @s remove escape_green
tag @s remove event_ohdream

scoreboard players reset @a kill