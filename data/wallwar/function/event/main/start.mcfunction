
execute store result score #temp temp run random value 1..50
execute if score #temp temp matches 1..10 run return run function wallwar:event/command
execute if score #temp temp matches 11..20 run return run function wallwar:event/wither/use
execute if score #temp temp matches 21..30 run return run function wallwar:event/small
execute if score #temp temp matches 31..40 run return run function wallwar:event/ohdream/use
execute if score #temp temp matches 41..50 run return run function wallwar:event/nodie

scoreboard players reset #1_event time
scoreboard players reset #2_event time
