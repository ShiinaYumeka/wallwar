
kill 0-0-0-0-1

forceload remove all
forceload add ~ ~ ~ ~

execute align xyz rotated 0 0 run summon minecraft:item_display ~0.5 ~ ~0.5 {Tags:["ctp"],UUID:[I;0,0,0,1]}

execute as 0-0-0-0-1 at @s run function wallwar:wall

function wallwar:recipe

scoreboard objectives setdisplay sidebar display
#scoreboard players display name maxkill display {"translate": "击杀王","color": "red"}
#scoreboard players display numberformat maxkill display fixed {"selector": "@s"}
#scoreboard players set maxkill display 0

bossbar remove dead_line
bossbar remove ocean
#enchant @s projectile_protection