
execute as @p[team=!sp,gamemode=!spectator] run function wallwar:bag/fix2

playsound entity.slime.jump block @a
particle minecraft:item_slime ~ ~ ~ 0 0 0 0.05 20 normal @a
kill @s

