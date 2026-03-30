
execute store result score #max temp run attribute @s max_health get 1
execute if score #max temp matches ..16 run return fail

$attribute @s minecraft:max_health modifier add $(1) -$(2) add_value 
