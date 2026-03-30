
forceload remove ~ ~
tag @s remove building_respawn
execute unless function wallwar:build/respawn/test run return fail
execute if score #wither_no_use time matches 1.. run return fail


playsound block.respawn_anchor.charge block @a ~ ~ ~


scoreboard players set @s tid 0
scoreboard players operation @s tid = @n[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_team:1b}}}}] tid

#effect give @a[gamemode=!spectator] glowing 11 0 true
#execute if score GAME_PRO time matches 2.. as @a[team=!sp,tag=!FIGHT] if score @s respawn matches 1 run function wallwar:build/respawn/effect

#execute if score #respawn_glow temp matches 1 run data modify entity @s Glowing set value 1b

