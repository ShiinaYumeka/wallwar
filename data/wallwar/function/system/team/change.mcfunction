
execute if entity @s[team=sp] run return run scoreboard players set @s tid -1
execute if entity @s[team=waiting] run return run scoreboard players set @s tid 0
execute if entity @s[team=blue] run return run scoreboard players set @s tid 1
execute if entity @s[team=green] run return run scoreboard players set @s tid 2
execute if entity @s[team=yellow] run return run scoreboard players set @s tid 3
execute if entity @s[team=red] run return run scoreboard players set @s tid 4

execute if entity @s[team=orange] run return run scoreboard players set @s tid 5
execute if entity @s[team=aqua] run return run scoreboard players set @s tid 6
execute if entity @s[team=purple] run return run scoreboard players set @s tid 7
execute if entity @s[team=pink] run return run scoreboard players set @s tid 8

scoreboard players set @s tid 99
