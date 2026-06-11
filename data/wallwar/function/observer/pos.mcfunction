
execute store result score #x temp run data get entity @s Pos[0] 1
execute store result score #y temp run data get entity @s Pos[1] 1
execute store result score #z temp run data get entity @s Pos[2] 1

title @s title {"translate":"警告","color":"red"}
title @a subtitle {"translate":"你已被洞察","color":"blue"}
