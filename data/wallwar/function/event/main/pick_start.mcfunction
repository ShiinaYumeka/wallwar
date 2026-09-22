
execute store result score #n temp run data get storage wallwar:event_run start
execute if score #n temp matches 0 run return fail
execute store result score #i temp run random value 0..2147483646
scoreboard players operation #i temp %= #n temp
execute store result storage wallwar:event_run i int 1 run scoreboard players get #i temp
function wallwar:event/main/take_start with storage wallwar:event_run
