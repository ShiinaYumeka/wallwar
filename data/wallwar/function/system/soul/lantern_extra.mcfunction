
advancement revoke @s only wallwar/system/soul_lantern
execute unless items entity @s container.17 soul_lantern[custom_data~{lantern_remove:2b}] run return fail
execute store result score #soul_rng temp run random value 1..2
execute unless score #soul_rng temp matches 1 run return fail
scoreboard players add @s kill_entity 1
function wallwar:soul/clamp
