scoreboard objectives add ww_order dummy
scoreboard objectives add ww_ready trigger
scoreboard objectives add ww_terrain trigger
# Reload never resumes a half-finished draft; the room bridge also sees phase 0.
execute if score #ww_phase time matches 1..3 run function wallwar:system/random_teamup/terrain/cancel
