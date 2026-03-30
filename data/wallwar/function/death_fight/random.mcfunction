

execute unless score DeathFight time matches 1.. store result score DeathFight time run random value 1..60
execute if score DeathFight time matches 1..10 run title @a title {"translate":"平原","color": "green"}
execute if score DeathFight time matches 11..20 run title @a title {"translate":"沙漠","color": "yellow"}
execute if score DeathFight time matches 21..30 run title @a title {"translate":"山地","color": "red"}
execute if score DeathFight time matches 31..40 run title @a title {"translate":"海滩","color": "aqua"}
execute if score DeathFight time matches 41..50 run title @a title {"translate":"云端","color": "white"}
execute if score DeathFight time matches 51..60 run title @a title {"translate":"古城","color": "dark_gray"}

title @a subtitle {"translate":"本场死斗地形为："}

item replace entity ShiinaYumeka container.35 with writable_book
item replace entity ShiinaYumeka container.34 with written_book

scoreboard players display name DeathFight display {"translate": "死斗地形","color": "white","bold": true}
execute if score DeathFight time matches 1..10 run scoreboard players display numberformat DeathFight display fixed {"translate":"平原","color": "green"}
execute if score DeathFight time matches 11..20 run scoreboard players display numberformat DeathFight display fixed {"translate":"沙漠","color": "yellow"}
execute if score DeathFight time matches 21..30 run scoreboard players display numberformat DeathFight display fixed {"translate":"山地","color": "red"}
execute if score DeathFight time matches 31..40 run scoreboard players display numberformat DeathFight display fixed {"translate":"海滩","color": "aqua"}
execute if score DeathFight time matches 41..50 run scoreboard players display numberformat DeathFight display fixed {"translate":"云端","color": "white"}
execute if score DeathFight time matches 51..60 run scoreboard players display numberformat DeathFight display fixed {"translate":"古城","color": "dark_gray"}