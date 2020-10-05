# Check for missing Warehouse Crates
# Called by: #minecraft:tick

execute as @e[type=item_frame,tag=sss_shulker_target] at @s if block ~ ~3 ~ minecraft:redstone_block run setblock ~ ~3 ~ minecraft:air
execute run function sss:boxreplacer