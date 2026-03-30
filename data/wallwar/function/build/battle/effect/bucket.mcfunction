

attribute @s armor modifier remove building_battle2

execute unless score @s tid = #temp tid run return fail
execute store result score #armor temp run attribute @s armor get 1
execute if score #armor temp matches 21.. run return run return fail

attribute @s armor modifier add building_battle2 1 add_value
