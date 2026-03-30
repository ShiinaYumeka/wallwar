
forceload add ~21 ~21 ~-21 ~-21

fill ~21 291 ~21 ~-21 295 ~-21 bedrock
fill ~20 296 ~20 ~-20 297 ~-20 sandstone
fill ~20 298 ~20 ~-20 300 ~-20 sand
fill ~20 301 ~20 ~-20 319 ~-20 air

fill ~21 291 ~21 ~21 319 ~-21 barrier
fill ~21 291 ~21 ~-21 319 ~21 barrier
fill ~-21 291 ~-21 ~-21 319 ~21 barrier
fill ~-21 291 ~-21 ~21 319 ~-21 barrier


summon marker ~ 300 ~ {Tags:["death_fight_summon"]}

tp @n[tag=death_fight_summon] ~-3 300 ~-20 0 0
scoreboard players set #rd_const time 41
execute as @n[tag=death_fight_summon] at @s run function wallwar:death_fight/beach/1

tp @n[tag=death_fight_summon] ~ 299 ~-20 0 0
scoreboard players set #rd_const time 41
execute as @n[tag=death_fight_summon] at @s run function wallwar:death_fight/beach/2

tp @n[tag=death_fight_summon] ~3 298 ~-20 0 0
scoreboard players set #rd_const time 41
execute as @n[tag=death_fight_summon] at @s run function wallwar:death_fight/beach/3



kill @e[tag=death_fight_summon]
worldborder set 41


execute as 0-0-0-0-1 at @s run tp @a ~ 301 ~
execute at 0-0-0-0-1 positioned ~ 301 ~ run spreadplayers ~ ~ 20 20 true @a[team=!sp,gamemode=!spectator]
