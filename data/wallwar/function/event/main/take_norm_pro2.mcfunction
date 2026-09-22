
$data modify storage wallwar:event_run pick set from storage wallwar:event_run pick_from[$(i)]
function wallwar:event/main/remove_norm with storage wallwar:event_run pick
execute as 0-0-0-0-1 at @s run function wallwar:event/main/run with storage wallwar:event_run pick
