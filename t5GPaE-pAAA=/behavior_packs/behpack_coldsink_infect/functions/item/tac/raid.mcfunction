event entity @s tac_raid

scoreboard objectives add raid_time dummy raid_time
scoreboard objectives add raid_check dummy raid_check
scoreboard players add raid_count raid_time 1
scoreboard players operation @s raid_time = raid_count raid_time
execute @s[scores={raid_time=999..}] ~~~ scoreboard players set raid_count raid_time 0

playsound sdc.bilebomb.throw @a ~~~ 1 1

clear @s[m=!c] nacal_tac:raid 0 1