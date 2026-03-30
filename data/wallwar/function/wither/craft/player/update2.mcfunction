

scoreboard players reset #temp temp
execute store success score #temp temp as @p[tag=wither_sword,distance=..1,team=!sp,tag=FIGHT,gamemode=!spectator] run function wallwar:wither/craft/player/ench2

execute if score #temp temp matches 1.. run item replace entity @s container.0 with air

