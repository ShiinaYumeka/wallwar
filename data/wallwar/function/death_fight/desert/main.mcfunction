
forceload add ~31 ~31 ~-31 ~-31

fill ~31 299 ~31 ~-31 296 ~-31 bedrock
fill ~30 300 ~30 ~-30 302 ~-30 sandstone
fill ~30 303 ~30 ~-30 306 ~-30 sand
fill ~30 307 ~30 ~-30 312 ~-30 air
fill ~30 313 ~30 ~-30 319 ~-30 air

fill ~31 296 ~31 ~31 319 ~-31 barrier
fill ~31 296 ~31 ~-31 319 ~31 barrier
fill ~-31 296 ~-31 ~-31 319 ~31 barrier
fill ~-31 296 ~-31 ~31 319 ~-31 barrier


summon marker ~ 307 ~ {Tags:["death_fight_summon"]}
scoreboard players set #rd_const time 40
execute as @n[tag=death_fight_summon] run function wallwar:death_fight/desert/dead

scoreboard players set #rd_const time 20
execute as @n[tag=death_fight_summon] run function wallwar:death_fight/desert/cactus

scoreboard players set #rd_const time 20
execute as @n[tag=death_fight_summon] run function wallwar:death_fight/desert/cactus2

kill @e[tag=death_fight_summon]

fill ~30 319 ~30 ~-30 319 ~-30 barrier
worldborder set 61


execute as 0-0-0-0-1 at @s run tp @a ~ 307 ~
execute at 0-0-0-0-1 positioned ~ 307 ~ run spreadplayers ~ ~ 30 30 under 310 true @a[team=!sp,gamemode=!spectator]
