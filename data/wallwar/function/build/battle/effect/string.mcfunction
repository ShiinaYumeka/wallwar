
execute unless score @s tid = #temp tid run return fail

execute as @a[gamemode=!spectator,team=!sp,nbt=!{active_effects:[{id:"minecraft:invisibility"}]},distance=..24] unless score @s tid = #temp tid run effect give @s glowing 10 0 true
