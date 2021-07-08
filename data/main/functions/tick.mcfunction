# Desc: Controls all function to run on the server. Make funtions run much less
# Thanks to: https://xisumavoid.com/vanillatweaks/
# Called by: #minecraft:tick

# Tick Counter Scoreboard + 1
scoreboard players add #sss_tick sss_tick 1


# Capture Items Before Deletion
execute as @e[type=item,nbt={Age:2000s}] at @s run function sss:capture

# Every 1 second (20 ticks)

execute if score #sss_tick sss_tick matches 1 run function #main:second
execute if score #sss_tick sss_tick matches 21 run function #main:second
execute if score #sss_tick sss_tick matches 41 run function #main:second
execute if score #sss_tick sss_tick matches 61 run function #main:second
execute if score #sss_tick sss_tick matches 81 run function #main:second

# Every 1 second just after previous tick (cooldown)
execute if score #sss_tick sss_tick matches 2 if score #sss_cooldown sss_cooldown matches 1 run scoreboard players set #sss_cooldown sss_cooldown 0
execute if score #sss_tick sss_tick matches 22 if score #sss_cooldown sss_cooldown matches 1 run scoreboard players set #sss_cooldown sss_cooldown 0
execute if score #sss_tick sss_tick matches 42 if score #sss_cooldown sss_cooldown matches 1 run scoreboard players set #sss_cooldown sss_cooldown 0
execute if score #sss_tick sss_tick matches 62 if score #sss_cooldown sss_cooldown matches 1 run scoreboard players set #sss_cooldown sss_cooldown 0
execute if score #sss_tick sss_tick matches 82 if score #sss_cooldown sss_cooldown matches 1 run scoreboard players set #sss_cooldown sss_cooldown 0

# Run other

    # Checks the comparator of the shulker box loader to determine when to fire the piston
execute if score #sss_tick sss_tick matches 10 run function sss:fullchecker
    # Checks for named items in frames for applying frame tags
execute if score #sss_tick sss_tick matches 40 run function sss:tagger
    # Checks for missing shulkerbox in auto loader and sets the block to a shulker box again
execute if score #sss_tick sss_tick matches 85 run function sss:missingchecker

# Reset tick counter to zero at 100 ticks
execute if score #sss_tick sss_tick matches 100.. run scoreboard players set #sss_tick sss_tick 0
