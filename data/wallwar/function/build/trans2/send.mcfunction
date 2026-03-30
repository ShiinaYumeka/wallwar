
execute if score #trans_glow temp matches 1.. run return fail
#execute unless block ^ ^1 ^-0.5 barrel[facing=up] run return fail
#execute if data block ^ ^1 ^-0.5 Items[0] run return fail
setblock ~ -64 ~ air
clone from minecraft:the_end 0 0 0 0 0 0 to minecraft:overworld ~ -64 ~ replace force
execute unless blocks ~ ~-0.5 ~ ~ ~-0.5 ~ ~ -64 ~ masked run return fail

clone from minecraft:the_end 0 1 0 0 1 0 to minecraft:overworld ~ -64 ~ replace force

setblock ^ ^-1 ^2.5 barrel[facing=up] destroy
data modify block ^ ^-1 ^2.5 Items set from block ~ -64 ~ Items
setblock ^ ^-1 ^2.5 air destroy
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}}]

scoreboard players set #trans_glow temp 1
playsound entity.player.teleport block @a ~ ~ ~
setblock ~ -64 ~ bedrock