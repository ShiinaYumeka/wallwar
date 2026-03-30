

execute if score GAME_PRO time matches 1 run return fail
execute unless block ^ ^1 ^-0.5 #heads run return fail
execute unless block ^ ^-1 ^-0.5 #heads run return fail
execute unless block ^1 ^ ^-0.5 #heads run return fail
execute unless block ^1 ^1 ^-0.5 #heads run return fail
execute unless block ^1 ^-1 ^-0.5 #heads run return fail
execute unless block ^-1 ^ ^-0.5 #heads run return fail
execute unless block ^-1 ^1 ^-0.5 #heads run return fail
execute unless block ^-1 ^-1 ^-0.5 #heads run return fail

return 1