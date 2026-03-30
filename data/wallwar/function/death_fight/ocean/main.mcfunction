
forceload add ~16 ~16 ~-16 ~-16

fill ~16 280 ~16 ~-16 283 ~-16 bedrock
fill ~15 283 ~15 ~-15 283 ~-15 gravel
fill ~15 284 ~15 ~-15 299 ~-15 water
fill ~15 300 ~15 ~-15 314 ~-15 water
fill ~15 315 ~15 ~-15 319 ~-15 air

fill ~16 280 ~16 ~16 319 ~-16 barrier
fill ~16 280 ~16 ~-16 319 ~16 barrier
fill ~-16 280 ~-16 ~-16 319 ~16 barrier
fill ~-16 280 ~-16 ~16 319 ~-16 barrier

function wallwar:death_fight/ocean/summon

worldborder set 31


execute as 0-0-0-0-1 at @s run tp @a ~ 315 ~
execute at 0-0-0-0-1 positioned ~ 315 ~ run spreadplayers ~ ~ 15 15 true @a[team=!sp,gamemode=!spectator]

