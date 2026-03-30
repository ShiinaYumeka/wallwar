
execute if entity @s[tag=building_wither_user] run return run tellraw @a[distance=..8] {"translate": "你已经献祭过 大师农耕锄 了"}

setblock ~ ~ ~ glowstone replace
execute as @p[gamemode=!spectator] run tag @s add wither_user

tag @s add building_wither_user

item replace entity @e[type=item_frame,distance=..1.5] container.0 with air

particle witch ~ ~ ~ 0.5 1 0.5 1 100 normal
playsound entity.wither.spawn player @a ~ ~ ~

tellraw @a [{"translate": "<声音> ","color": "gray"},{"selector": "@p[gamemode=!spectator]"},{"translate": " 成为了凋灵仪式的大祭司"}]