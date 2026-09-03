
execute store result score #temp temp run random value 1..100
execute if score #temp temp matches 1..20 run effect give @s slowness 2 1 false
execute if score #temp temp matches 21..40 run effect give @s mining_fatigue 2 1 false


