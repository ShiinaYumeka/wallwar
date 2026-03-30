
scoreboard players add @p[team=!sp,gamemode=!spectator] kill_entity 20

playsound block.soul_soil.break block @a
particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0.05 20 normal @a
kill @s

