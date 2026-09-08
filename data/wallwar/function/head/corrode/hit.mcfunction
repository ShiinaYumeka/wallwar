
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0.7
particle minecraft:sneeze ~ ~0.8 ~ 1.2 0.4 1.2 0.02 30

execute as @a[gamemode=!spectator,team=!sp,distance=..4] run function wallwar:head/corrode/apply

kill @s
