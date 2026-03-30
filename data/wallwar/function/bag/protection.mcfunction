
execute as @p[team=!sp,gamemode=!spectator] run function wallwar:bag/protection2

playsound block.anvil.use block @a
particle happy_villager ~ ~ ~ 0.3 0 0.3 0.5 20 normal @a
kill @s

