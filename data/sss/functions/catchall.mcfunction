## Catch All Sorting. If normal sorting does not succeed, attempt to send item to item frame tagged with Catch All

execute as @s if block ~ ~-1 ~ minecraft:target if block ~ ~-2 ~ minecraft:amethyst_block run teleport @s @e[limit=1,sort=random,type=minecraft:item_frame,distance=..256,tag=sss_catchall]
execute as @s if block ~ ~-2 ~ minecraft:target if block ~ ~-3 ~ minecraft:amethyst_block run teleport @s @e[limit=1,sort=random,type=minecraft:item_frame,distance=..256,tag=sss_catchall]