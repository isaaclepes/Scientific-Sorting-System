# Runs every second via tick counter (main:tick)
# Locate any loose items ready to sort

# Primary routine
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:target if block ~ ~-2 ~ minecraft:barrier run function sss:sort

execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:blast_furnace if block ~ ~-2 ~ minecraft:barrier run function sss:smelt
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:furnace if block ~ ~-2 ~ minecraft:barrier run function sss:furnace
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:smoker if block ~ ~-2 ~ minecraft:barrier run function sss:smoker

execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:coal_block if block ~ ~-2 ~ minecraft:furnace if block ~ ~-3 ~ minecraft:barrier run function sss:fuelfurnace
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:coal_block if block ~ ~-2 ~ minecraft:blast_furnace if block ~ ~-3 ~ minecraft:barrier run function sss:fuelsmelt
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:coal_block if block ~ ~-2 ~ minecraft:smoker if block ~ ~-3 ~ minecraft:barrier run function sss:fuelsmoker

# Kill Empty Warehouse Crates
execute as @e if entity @s[type=item,nbt={Item:{tag:{display:{Name:"{\"text\":\"Warehouse Crate\"}"},BlockEntityTag:{Items:[]}}}}] run kill @s

execute run function sss:modsupport
