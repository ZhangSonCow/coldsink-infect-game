title @s actionbar §f已使用技能 §b【炮台】
execute @s ~~~ playsound machine_port_spawn @a ~~~
execute @s ~~~ summon coldsink:machine_fort ^^1.2^0.8

scoreboard players add boom_count machine_time 1
scoreboard players operation @s machine_time = boom_count machine_time
scoreboard players operation @e[type=coldsink:machine_fort,c=1] machine_time = boom_count machine_time
execute @s[scores={machine_time=999..}] ~~~ scoreboard players set machine_count machine_time 0