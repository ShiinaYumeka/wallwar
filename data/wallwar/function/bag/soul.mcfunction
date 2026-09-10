
scoreboard players add @p[team=!sp,gamemode=!spectator] kill_entity 20
execute as @p[team=!sp,gamemode=!spectator] run function wallwar:soul/clamp

playsound block.soul_soil.break block @a
particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0.05 20 normal @a
kill @s

