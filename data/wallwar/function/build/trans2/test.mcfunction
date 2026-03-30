
execute store result score #temp temp run data get entity @s Rotation[1] 0
execute unless score #temp temp matches 0 run return fail

execute unless block ^ ^1 ^-0.5 #can_trans run return fail
execute unless data block ^ ^1 ^-0.5 Items[0] run return fail

return 1