
execute store result score #temp temp run random value 1..100
execute if score #temp temp matches 1..50 run effect give @s glowing 2 1 false


