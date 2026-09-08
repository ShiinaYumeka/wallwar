
execute unless entity @s[tag=corrode_init] run function wallwar:head/corrode/init

scoreboard players operation #corrode_now temp = @s temp
execute as @e[type=marker,tag=corrode_mark] if score @s temp = #corrode_now temp run tp @s ~ ~ ~
execute as @e[type=marker,tag=corrode_mark] if score @s temp = #corrode_now temp run scoreboard players set @s time 3
