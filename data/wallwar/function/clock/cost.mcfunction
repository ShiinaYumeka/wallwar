
particle firework ~ ~ ~ 0.1 0.1 0.1 0.3 40 normal
playsound block.beacon.activate player @a ~ ~ ~ 1 1 1

execute as @p[distance=..0.5,team=!sp,gamemode=!spectator] store result score #rot temp run data get entity @s Rotation[1] 1

execute if score #rot temp matches ..0 run time set day
execute if score #rot temp matches 1.. run time set night

kill @s
