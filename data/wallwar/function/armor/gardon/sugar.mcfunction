

execute unless block ~ ~-1 ~ #dirt run return fail
execute unless block ~ ~ ~ minecraft:air run return fail

execute if block ~ ~-1 ~1 water run return run function wallwar:armor/gardon/sugar2
execute if block ~ ~-1 ~-1 water run return run function wallwar:armor/gardon/sugar2
execute if block ~1 ~-1 ~ water run return run function wallwar:armor/gardon/sugar2
execute if block ~-1 ~-1 ~ water run return run function wallwar:armor/gardon/sugar2
