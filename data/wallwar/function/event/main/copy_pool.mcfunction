
function wallwar:event/main/init

data modify storage wallwar:event_run start set value []
data modify storage wallwar:event_run start append from storage wallwar:event start[{on:1b}]

data modify storage wallwar:event_run norm set value []
data modify storage wallwar:event_run norm append from storage wallwar:event norm[{on:1b}]

data modify storage wallwar:event_run special set value []
data modify storage wallwar:event_run special_src set value []
data modify storage wallwar:event_run special_src append from storage wallwar:event special[{on:1b}]
function wallwar:event/main/copy_special
data remove storage wallwar:event_run special_src
