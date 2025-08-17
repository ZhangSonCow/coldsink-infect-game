event entity @s tac_mineset

scoreboard objectives add mineset_time dummy mineset_time
scoreboard objectives add mineset_check dummy mineset_check
scoreboard players add mineset_count mineset_time 1
scoreboard players operation @s mineset_time = mineset_count mineset_time
execute @s[scores={mineset_time=999..}] ~~~ scoreboard players set mineset_count mineset_time 0

tag @s add mineset_thrower
playsound sdc.bilebomb.throw @a ~~~ 1 1

clear @s[m=!c] nacal_tac:mineset 0 1