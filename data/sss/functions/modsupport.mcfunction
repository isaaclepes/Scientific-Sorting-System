# This function is called in sss:second and can be viewed as a modifiable version of the function calls.
# Other datapacks can add entries into here to call functions to support items added by mods.
# This will allow other datapack authors to make their pack compatible with SSS while not requiring SSS
# to be updated specifically to support their datapack.


# Example


# execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:target if block ~ ~-2 ~ minecraft:barrier run function mypack:sort

# execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:blast_furnace if block ~ ~-2 ~ minecraft:barrier run function mypack:smelt
# execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:furnace if block ~ ~-2 ~ minecraft:barrier run function mypack:furnace
# execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:smoker if block ~ ~-2 ~ minecraft:barrier run function mypack:smoker

# execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:coal_block if block ~ ~-2 ~ minecraft:furnace if block ~ ~-3 ~ minecraft:barrier run function mypack:fuelfurnace
# execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:coal_block if block ~ ~-2 ~ minecraft:blast_furnace if block ~ ~-3 ~ minecraft:barrier run function mypack:fuelsmelt
# execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:coal_block if block ~ ~-2 ~ minecraft:smoker if block ~ ~-3 ~ minecraft:barrier run function mypack:fuelsmoker


# Clone the sort, smelt, furnace, smoker, fuelfurnace, fuelsmelt, fuelsmoker functions and change the item checks
# to match the custom items.  You can also add new functions to sort for new crafting devices this way.