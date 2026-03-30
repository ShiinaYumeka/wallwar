
function wallwar:scores2

gamerule mob_griefing false
gamerule keep_inventory true
gamerule show_death_messages true
gamerule reduced_debug_info true
gamerule max_command_sequence_length 999999999
gamerule respawn_radius 0
gamerule immediate_respawn true
#gamerule commandBlockOutput false

tellraw @a [{"translate": " [获取管理之书] ","click_event": {"action": "run_command","command": "/function wallwar:lobby/give"}}]

scoreboard objectives add rejoin minecraft.custom:minecraft.leave_game
scoreboard objectives add afk dummy
scoreboard objectives add time dummy
scoreboard objectives add display dummy {"translate": "---战墙---","bold": true,"color": "white"}
scoreboard objectives add death deathCount
scoreboard objectives add kill playerKillCount
scoreboard objectives add kill_player dummy
scoreboard objectives add kill_entity totalKillCount
scoreboard objectives add temp dummy
scoreboard objectives add respawn dummy
scoreboard objectives add invisible dummy
scoreboard objectives add wither_health dummy
scoreboard objectives add wither_armor dummy
scoreboard objectives add wither_horn_use used:goat_horn
scoreboard objectives add command_book_use used:written_book
scoreboard objectives add fishing_use used:fishing_rod
scoreboard objectives add egg_user dropped:sniffer_egg
scoreboard objectives add command_block_give dummy
scoreboard objectives add command_block_timer dummy
scoreboard objectives add konpaku dummy
scoreboard objectives add ender_used used:ender_pearl "珍珠使用"
scoreboard objectives add escape_timer dummy
scoreboard objectives add weapon_rokan dummy
scoreboard objectives add weapon_haku dummy
scoreboard objectives add fish custom:fish_caught
scoreboard objectives add building_player dummy

scoreboard objectives add recipe dummy

scoreboard objectives add pid dummy
scoreboard players set #pid pid 1
scoreboard objectives add tid dummy
scoreboard players set #tid tid 1
scoreboard objectives add sid dummy

scoreboard objectives add rc used:carrot_on_a_stick

scoreboard objectives add nightvision trigger
scoreboard objectives add suicide trigger
scoreboard objectives add tutorial trigger

scoreboard objectives add const dummy
scoreboard players set 2 const 2
scoreboard players set 3 const 3
scoreboard players set 4 const 4
scoreboard players set 5 const 5
scoreboard players set 6 const 6
scoreboard players set 20 const 20
scoreboard players set 30 const 30
scoreboard players set 60 const 60
scoreboard players set 100 const 100
scoreboard players set 1200 const 1200
scoreboard players set 10000 const 10000

team add red
team add blue
team add green
team add yellow

team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify green color green

team modify blue prefix "❤ "
team modify red prefix "❤ "
team modify yellow prefix "❤ "
team modify green prefix "❤ "


team add orange
team add aqua
team add purple
team add pink

team modify orange color gold
team modify aqua color aqua
team modify purple color dark_purple
team modify pink color light_purple

team modify orange prefix "❤ "
team modify aqua prefix "❤ "
team modify purple prefix "❤ "
team modify pink prefix "❤ "

team add sp
team modify sp color gray
team modify sp prefix "⭕ "
team modify sp friendlyFire false


team add waiting
team modify waiting color white
team modify waiting prefix "⭕ "
team modify waiting friendlyFire false

bossbar add gauge "1"
bossbar set minecraft:gauge color yellow
bossbar set minecraft:gauge style progress
bossbar set minecraft:gauge max 48000
bossbar set minecraft:gauge name "天空之壁倒塌倒计时"


bossbar add gauge2 "2"
bossbar set minecraft:gauge2 color green
bossbar set minecraft:gauge2 style progress
bossbar set minecraft:gauge2 max 24000
bossbar set minecraft:gauge2 name "缩圈倒计时"

bossbar add gauge3 "3"
bossbar set minecraft:gauge3 color red
bossbar set minecraft:gauge3 style progress
bossbar set minecraft:gauge3 max 12000
bossbar set minecraft:gauge3 name "死斗模式倒计时"

bossbar add gauge4 "4"
bossbar set minecraft:gauge4 color purple
bossbar set minecraft:gauge4 style progress
bossbar set minecraft:gauge4 max 2400
bossbar set minecraft:gauge4 name "全体中毒倒计时"

bossbar add gauge5 "5"
bossbar set minecraft:gauge5 color purple
bossbar set minecraft:gauge5 style progress
bossbar set minecraft:gauge5 max 3600
bossbar set minecraft:gauge5 name "全体凋零倒计时"

bossbar add gauge6 "6"
bossbar set minecraft:gauge6 color purple
bossbar set minecraft:gauge6 style progress
bossbar set minecraft:gauge6 max 3600
bossbar set minecraft:gauge6 name "果实刷新倒计时"


scoreboard objectives add HP health
scoreboard objectives add Armor armor
scoreboard objectives add Unbreaking dummy
scoreboard objectives setdisplay below_name HP


execute store result bossbar minecraft:gauge value run scoreboard players get GAME time