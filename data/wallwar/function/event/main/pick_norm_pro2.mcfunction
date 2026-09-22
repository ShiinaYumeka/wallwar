
data modify storage wallwar:event_run pick_from set value []
data modify storage wallwar:event_run pick_from append from storage wallwar:event_run norm[{after_pro2:0b}]
execute store result score #n temp run data get storage wallwar:event_run pick_from
execute if score #n temp matches 0 run return fail
execute store result score #i temp run random value 0..2147483646
scoreboard players operation #i temp %= #n temp
execute store result storage wallwar:event_run i int 1 run scoreboard players get #i temp
function wallwar:event/main/take_norm_pro2 with storage wallwar:event_run
