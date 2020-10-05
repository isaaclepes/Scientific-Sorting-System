# Runs every 5 seconds via tick counter (main:tick)
# Check if shulker box needs broken
# Called by: #minecraft:tick

execute as @e[type=item_frame,tag=sss_shulker_target] at @s if block ~1 ~1 ~ minecraft:comparator{OutputSignal:15} run function sss:boxbreaker
execute as @e[type=item_frame,tag=sss_shulker_target] at @s if block ~-1 ~1 ~ minecraft:comparator{OutputSignal:15} run function sss:boxbreaker
execute as @e[type=item_frame,tag=sss_shulker_target] at @s if block ~ ~1 ~1 minecraft:comparator{OutputSignal:15} run function sss:boxbreaker
execute as @e[type=item_frame,tag=sss_shulker_target] at @s if block ~ ~1 ~-1 minecraft:comparator{OutputSignal:15} run function sss:boxbreaker
