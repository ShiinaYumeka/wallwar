tag @r[tag=ww_participant,tag=!ww_captain,tag=!no_leader] add ww_captain
scoreboard players add #ww_count temp 1
execute if score #ww_count temp matches ..3 run function wallwar:system/random_teamup/terrain/fill_captains
