
execute unless score DeathFight time matches 11..20 as @a[tag=FIGHT,team=!sp,gamemode=!spectator] at @s run summon fireball ~ 328 ~ {Motion:[0.0,-1.0,0.0],ExplosionPower:3}
execute if score DeathFight time matches 11..20 as @a[tag=FIGHT,team=!sp,gamemode=!spectator] at @s run summon fireball ~ 318 ~ {Motion:[0.0,-1.0,0.0],ExplosionPower:3}
playsound entity.blaze.shoot player @a ~ ~ ~ 1 1 1


schedule function wallwar:event/sunnine/cast 60s replace
