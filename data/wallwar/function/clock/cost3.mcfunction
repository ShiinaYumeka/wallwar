
particle firework ~ ~ ~ 0.1 0.1 0.1 0.3 40 normal
playsound block.beacon.activate player @a ~ ~ ~ 1 1 1

execute as @p[distance=..0.5,team=!sp,gamemode=!spectator] store result score #rot temp run data get entity @s Rotation[1] 1

weather clear
scoreboard players set #temp time 9600
execute if score #BOSS_MODE time matches 1 run scoreboard players set #temp time 4800

execute if score GAME_PRO time matches 1 run scoreboard players operation #temp time /= 2 const
execute if score GAME_PRO time matches 5.. run scoreboard players operation #temp time /= 4 const
execute if score GAME_PRO time matches 1 unless score GAME time matches 24001.. run scoreboard players set #temp time 600
execute if score #rot temp matches ..0 run scoreboard players operation GAME time += #temp time
execute if score #rot temp matches 1.. run scoreboard players operation GAME time -= #temp time
execute unless score GAME time matches 201.. run scoreboard players set GAME time 200

kill @s
