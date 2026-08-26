
advancement revoke @s only wallwar:hunter/craft_eye
execute if entity @s[tag=hunter_player,team=red] run return fail
clear @s ender_eye[custom_data~{hunter_eye:1b}] 1
tellraw @s [{"translate":"[猎人模式] ","color":"gold"},{"translate":"只有猎人可以合成猎人之眼","color":"red"}]
