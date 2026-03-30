
execute store result bossbar dead_line value run scoreboard players get #end time
execute unless score #end time matches 100.. run return run scoreboard players set #end time 0
execute if score #end time matches 100..199 run return run scoreboard players set #end time 100
execute if score #end time matches 200..299 run return run scoreboard players set #end time 200
execute if score #end time matches 300..399 run return run scoreboard players set #end time 300
