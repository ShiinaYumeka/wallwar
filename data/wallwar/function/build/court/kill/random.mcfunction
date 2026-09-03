
execute as @a[tag=FIGHT] if score @s tid = build_court tid run tag @s add building_court_konpaku_temp

execute as @r[tag=FIGHT,tag=building_court_konpaku_temp] run function wallwar:build/court/kill/konpaku

tag @a remove building_court_konpaku_temp
