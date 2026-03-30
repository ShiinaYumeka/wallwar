
execute as @n[tag=new] if entity @s[tag=summoner_death] run data modify entity @s PortalCooldown set value 6000
scoreboard players operation @n[tag=new] sid = @s sid
tag @n[tag=new] add pokemon_master_summon
