
$data modify storage wallwar:event_run pick set from storage wallwar:event_run norm[$(i)]
$data remove storage wallwar:event_run norm[$(i)]
execute as 0-0-0-0-1 at @s run function wallwar:event/main/run with storage wallwar:event_run pick
