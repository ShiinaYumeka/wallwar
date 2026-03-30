
scoreboard players operation @s pid = #pid pid
scoreboard players add #pid pid 1

#say @s 首次加入战墙
execute if score GAMEMODE time matches 1.. run function wallwar:system/rejoin/spec
