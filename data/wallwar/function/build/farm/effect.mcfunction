

execute if blocks ^2 ^ ^-0.5 ^-2 ^ ^-4.5 ^2 ^3 ^-0.5 all if blocks ^2 ^ ^-0.5 ^-2 ^ ^-4.5 ^2 ^4 ^-0.5 all run return run execute if score #temp temp matches 1..40 run summon item ^ ^ ^0.5 {Item:{id:"bread",components:{"minecraft:item_name":{"translate":"全麦面包","italic": false,"color": "yellow"},"minecraft:lore":[{"translate":"10饱食 12饱和","italic": false,"color": "yellow"},{"translate":"回复大量饱食度并获得短暂的吸收","italic": false,"color": "gray"},{"translate":"*1000%纯小麦","italic": false,"color": "gray"}],"food": {"can_always_eat": false,"nutrition": 10,"saturation": 12},"consumable": {"animation":"eat","consume_seconds": 1.7,"on_consume_effects":[{"type":"apply_effects","effects":[{"id": "absorption","duration": 36,"amplifier": 0}]}]},"custom_data": {"full_bread":1b}},count:1}}


execute if score #temp temp matches 1..67 run summon item ^ ^ ^0.5 {Item:{id:"bread",components:{"minecraft:custom_name":{"translate":"法式面包","italic": false,"color": "aqua"},"minecraft:lore":[{"translate":"8饱食 12饱和","italic": false,"color": "yellow"},{"translate":"回复大量饱食度","italic": false,"color": "gray"},{"translate":"*锋利的武器","italic": false,"color": "gray"}],"enchantments": {"sharpness": 1},"food": {"can_always_eat": false,"nutrition": 8,"saturation": 12},"consumable": {"animation":"eat","consume_seconds": 1.8}},count:1}}

