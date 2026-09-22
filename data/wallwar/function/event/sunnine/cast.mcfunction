
execute if score GAMEMODE time matches 0 run return fail
execute if score GAME_PRO time matches 5.. run return fail
execute as @a[tag=FIGHT,team=!sp,gamemode=!spectator] at @s run summon fireball ~ 330 ~ {Motion:[0.0d,-1.0d,0.0d],ExplosionPower:2,CustomNameVisible:1b,CustomName:{"translate":"火焰冲击"}}
playsound entity.blaze.shoot player @a ~ ~ ~ 1 1 1

schedule function wallwar:event/sunnine/cast 60s replace
