
summon lightning_bolt ~ ~3 ~
fill ~1 ~1 ~1 ~-1 ~-2 ~-1 reinforced_deepslate replace
setblock ~ ~ ~ shulker_box{LootTable:"wallwar:boss/gift"} replace

execute as @a[gamemode=!spectator,distance=..5] positioned ~-2 ~-2 ~-2 if entity @s[dx=3,dy=3,dz=3] run function wallwar:event/gift/die

kill @s
