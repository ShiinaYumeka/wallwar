
execute if score GAME_PRO time matches 1 run return fail
execute unless block ^ ^ ^-0.5 shroomlight run return fail
execute unless block ^ ^1 ^-0.5 gilded_blackstone run return fail
execute unless block ^ ^-1 ^-0.5 gilded_blackstone run return fail
execute unless block ^1 ^ ^-0.5 gilded_blackstone run return fail
execute unless block ^-1 ^ ^-0.5 gilded_blackstone run return fail
execute unless block ^1 ^1 ^-0.5 polished_basalt run return fail
execute unless block ^1 ^-1 ^-0.5 polished_basalt run return fail
execute unless block ^-1 ^1 ^-0.5 polished_basalt run return fail
execute unless block ^-1 ^-1 ^-0.5 polished_basalt run return fail

return 1