
setblock ~ ~ ~ air destroy
setblock ~ ~1 ~ air destroy
execute store success score ibctest time run spawnpoint @p[tag=building_respawn_user] ~ ~0.1 ~

#scoreboard players add @s respawn 1