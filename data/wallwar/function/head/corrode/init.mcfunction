
tag @s add corrode_init

scoreboard players add #corrode_id temp 1
scoreboard players operation @s temp = #corrode_id temp

summon marker ~ ~ ~ {Tags:["corrode_mark","corrode_new"]}
scoreboard players operation @n[type=marker,tag=corrode_new,distance=..1] temp = #corrode_id temp
scoreboard players set @n[type=marker,tag=corrode_new,distance=..1] time 3
tag @n[type=marker,tag=corrode_new,distance=..1] remove corrode_new
