
execute unless block ^ ^ ^-0.5 hay_block[axis=y] run return fail
execute unless block ^1 ^ ^-0.5 hay_block[axis=y] run return fail
execute unless block ^2 ^ ^-0.5 hay_block[axis=y] run return fail
execute unless block ^-1 ^ ^-0.5 hay_block[axis=y] run return fail
execute unless block ^-2 ^ ^-0.5 hay_block[axis=y] run return fail
execute unless block ^ ^ ^-1.5 hay_block[axis=y] run return fail
execute unless block ^1 ^ ^-1.5 hay_block[axis=y] run return fail
execute unless block ^2 ^ ^-1.5 hay_block[axis=y] run return fail
execute unless block ^-1 ^ ^-1.5 hay_block[axis=y] run return fail
execute unless block ^-2 ^ ^-1.5 hay_block[axis=y] run return fail
execute unless block ^ ^ ^-2.5 hay_block[axis=y] run return fail
execute unless block ^1 ^ ^-2.5 hay_block[axis=y] run return fail
execute unless block ^2 ^ ^-2.5 hay_block[axis=y] run return fail
execute unless block ^-1 ^ ^-2.5 hay_block[axis=y] run return fail
execute unless block ^-2 ^ ^-2.5 hay_block[axis=y] run return fail
execute unless block ^ ^ ^-3.5 hay_block[axis=y] run return fail
execute unless block ^1 ^ ^-3.5 hay_block[axis=y] run return fail
execute unless block ^2 ^ ^-3.5 hay_block[axis=y] run return fail
execute unless block ^-1 ^ ^-3.5 hay_block[axis=y] run return fail
execute unless block ^-2 ^ ^-3.5 hay_block[axis=y] run return fail
execute unless block ^ ^ ^-4.5 hay_block[axis=y] run return fail
execute unless block ^1 ^ ^-4.5 hay_block[axis=y] run return fail
execute unless block ^2 ^ ^-4.5 hay_block[axis=y] run return fail
execute unless block ^-1 ^ ^-4.5 hay_block[axis=y] run return fail
execute unless block ^-2 ^ ^-4.5 hay_block[axis=y] run return fail

execute if entity @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_farm:1b}}}},distance=0.1..10] run return fail

return 1