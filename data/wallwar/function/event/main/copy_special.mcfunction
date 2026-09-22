
execute unless data storage wallwar:event_run special_src[0] run return fail
execute store result score #temp temp run random value 1..3
execute if score #temp temp matches 1 run data modify storage wallwar:event_run special append from storage wallwar:event_run special_src[0]
data remove storage wallwar:event_run special_src[0]
function wallwar:event/main/copy_special
