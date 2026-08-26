
scoreboard players set #has_higher hunter_temp 0
execute as @a[tag=hunter_trackable] if score @s hunter_uid > @p[tag=hunter_self] hunter_tracking run scoreboard players set #has_higher hunter_temp 1
execute unless score #has_higher hunter_temp matches 1 run scoreboard players set @s hunter_tracking 0
execute if score #has_higher hunter_temp matches 1 run scoreboard players add @s hunter_tracking 1

execute as @a[tag=hunter_trackable] if score @s hunter_uid = @p[tag=hunter_self] hunter_tracking run tag @s add hunter_tracking_target
execute unless entity @a[tag=hunter_tracking_target] if entity @a[tag=hunter_trackable,scores={hunter_uid=1..}] run function wallwar:hunter/compass/select
