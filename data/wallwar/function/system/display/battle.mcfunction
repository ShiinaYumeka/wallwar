
scoreboard players display name build_battle display {"translate": "领主祭坛","color": "red","bold": true}
execute if score build_battle tid matches 0 run scoreboard players display numberformat build_battle display fixed {"translate": "闲置","color": "gray"}
execute if score build_battle tid matches 1 run scoreboard players display numberformat build_battle display fixed {"translate": "蓝队","color": "blue"}
execute if score build_battle tid matches 2 run scoreboard players display numberformat build_battle display fixed {"translate": "绿队","color": "green"}
execute if score build_battle tid matches 3 run scoreboard players display numberformat build_battle display fixed {"translate": "黄队","color": "yellow"}
execute if score build_battle tid matches 4 run scoreboard players display numberformat build_battle display fixed {"translate": "红队","color": "red"}

execute if score build_battle tid matches 5 run scoreboard players display numberformat build_battle display fixed {"translate": "橙队","color": "gold"}
execute if score build_battle tid matches 6 run scoreboard players display numberformat build_battle display fixed {"translate": "青队","color": "aqua"}
execute if score build_battle tid matches 7 run scoreboard players display numberformat build_battle display fixed {"translate": "紫队","color": "dark_purple"}
execute if score build_battle tid matches 8 run scoreboard players display numberformat build_battle display fixed {"translate": "粉队","color": "light_purple"}
