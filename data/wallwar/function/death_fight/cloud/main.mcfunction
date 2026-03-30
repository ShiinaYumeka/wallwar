
forceload add ~16 ~16 ~-16 ~-16

#fill ~16 260 ~16 ~-16 263 ~-16 bedrock
fill ~15 264 ~15 ~-15 267 ~-15 barrier
fill ~15 268 ~15 ~-15 272 ~-15 air
fill ~15 273 ~15 ~-15 277 ~-15 white_wool
fill ~15 278 ~15 ~-15 280 ~-15 white_stained_glass
fill ~15 281 ~15 ~-15 300 ~-15 air
fill ~15 301 ~15 ~-15 319 ~-15 air

fill ~16 260 ~16 ~16 289 ~-16 barrier
fill ~16 260 ~16 ~-16 289 ~16 barrier
fill ~-16 260 ~-16 ~-16 289 ~16 barrier
fill ~-16 260 ~-16 ~16 289 ~-16 barrier
fill ~16 290 ~16 ~16 319 ~-16 barrier
fill ~16 290 ~16 ~-16 319 ~16 barrier
fill ~-16 290 ~-16 ~-16 319 ~16 barrier
fill ~-16 290 ~-16 ~16 319 ~-16 barrier




worldborder set 31
execute as 0-0-0-0-1 at @s run tp @a ~ 276 ~
execute at 0-0-0-0-1 positioned ~ 276 ~ run spreadplayers ~ ~ 15 15 under 268 true @a[team=!sp,gamemode=!spectator]
