
execute as @e[type=item,distance=..8,nbt={Item:{components:{"minecraft:custom_data":{hunter_eye:1b}}}},limit=1,sort=nearest] run function wallwar:hunter/eye/consume_item
