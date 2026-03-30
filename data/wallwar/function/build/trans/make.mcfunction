
scoreboard players operation #temp tid = @s tid
execute as @a[gamemode=!spectator] if score @s tid = #temp tid run give @s item_frame
function wallwar:system/afk/give
