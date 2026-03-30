

execute store result score #temp temp run random value 1..100
execute if score #temp temp matches 1..10 run return run effect give @s resistance 1 4 true
execute if score #temp temp matches 11..20 run return run effect give @s hunger 2 9 true
execute if score #temp temp matches 21..30 run return run effect give @s resistance 5 0 true
execute if score #temp temp matches 30..40 run return run effect give @s absorption 5 0 true
effect give @s glowing 5 0 true
