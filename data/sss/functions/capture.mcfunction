# Capture aging items before server deletes them

execute as @s if entity @s[type=item] in minecraft:overworld run teleport @s @e[limit=1,sort=nearest,type=minecraft:item_frame,tag=sss_capture_target]
execute as @s if entity @s[type=item] at @s run function sss:sort
