# Runs every second via tick counter (main:tick)
# Locate any loose items ready to sort

# Primary routine
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:target if block ~ ~-2 ~ minecraft:barrier run function sss:sort
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:blast_furnace if block ~ ~-2 ~ minecraft:barrier run function sss:smelt
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:coal_block if block ~ ~-2 ~ minecraft:barrier run function sss:fuel
