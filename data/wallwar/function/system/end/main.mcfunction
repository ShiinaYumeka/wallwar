
execute at @s if block ~ ~ ~ water run return fail

effect clear @s resistance
effect give @s weakness 1 4 true
effect give @s glowing 1 4 true

scoreboard players add GAME time 1

scoreboard players add #end time 1

execute if score #end time matches 100 run function wallwar:system/end/1
execute if score #end time matches 200 run function wallwar:system/end/2
execute if score #end time matches 300 run function wallwar:system/end/3
execute if score #end time matches 400.. run function wallwar:system/end/end