
xp set @p[team=!sp,gamemode=!spectator] 30 levels

playsound entity.player.levelup block @a
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.05 20 normal @a
kill @s

