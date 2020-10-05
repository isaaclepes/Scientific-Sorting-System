# Place Warehouse Crates
# Called by sss:missingchecker

execute as @e[type=item_frame,tag=sss_shulker_target] at @s if block ~1 ~1 ~ minecraft:comparator if block ~2 ~1 ~ minecraft:air run setblock ~2 ~1 ~ minecraft:brown_shulker_box[facing=down]{CustomName:"\"Warehouse Crate\""}
execute as @e[type=item_frame,tag=sss_shulker_target] at @s if block ~-1 ~1 ~ minecraft:comparator if block ~-2 ~1 ~ minecraft:air run setblock ~-2 ~1 ~ minecraft:brown_shulker_box[facing=down]{CustomName:"\"Warehouse Crate\""}
execute as @e[type=item_frame,tag=sss_shulker_target] at @s if block ~ ~1 ~1 minecraft:comparator if block ~ ~1 ~2 minecraft:air run setblock ~ ~1 ~2 minecraft:brown_shulker_box[facing=down]{CustomName:"\"Warehouse Crate\""}
execute as @e[type=item_frame,tag=sss_shulker_target] at @s if block ~ ~1 ~-1 minecraft:comparator if block ~ ~1 ~-2 minecraft:air run setblock ~ ~1 ~-2 minecraft:brown_shulker_box[facing=down]{CustomName:"\"Warehouse Crate\""}