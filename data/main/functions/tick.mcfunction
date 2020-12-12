# Desc: Controls all function to run on the server. Make funtions run much less
# Thanks to: https://xisumavoid.com/vanillatweaks/
# Called by: #minecraft:tick

scoreboard players add #sss_tick sss_tick 1

# Capture Items Before Deletion
execute as @e[type=item,nbt={Age:2000s}] at @s run function sss:capture

# Every 1 second
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
execute if score #sss_tick sss_tick matches 10 run function sss:fullchecker
execute if score #sss_tick sss_tick matches 40 run function sss:tagger
execute if score #sss_tick sss_tick matches 85 run function sss:missingchecker

# Reset at 100
execute if score #sss_tick sss_tick matches 100.. run scoreboard players set #sss_tick sss_tick 0
