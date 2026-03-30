
execute store result score #temp temp run random value 1..100
execute if score #temp temp matches 1..10 run effect give @s glowing 2 1 false
execute if score #temp temp matches 11..20 run effect give @s slowness 2 1 false
execute if score #temp temp matches 21..30 run effect give @s mining_fatigue 2 1 false


