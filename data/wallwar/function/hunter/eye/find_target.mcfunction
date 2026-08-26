
tag @s add hunter_self
tag @a[team=green,gamemode=!spectator] add hunter_trackable
execute as @a[tag=hunter_trackable] if score @s hunter_uid = @p[tag=hunter_self] hunter_tracking run tag @s add hunter_tracking_target
execute unless entity @a[tag=hunter_tracking_target] if entity @a[tag=hunter_trackable,scores={hunter_uid=1..}] run function wallwar:hunter/compass/select
