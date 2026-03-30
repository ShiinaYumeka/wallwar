
execute as @r[team=waiting,tag=!no_leader] run function wallwar:system/random_teamup/main/get_leader2

scoreboard players remove Teams temp 1
execute if score Teams temp matches 1.. run function wallwar:system/random_teamup/main/get_leader
