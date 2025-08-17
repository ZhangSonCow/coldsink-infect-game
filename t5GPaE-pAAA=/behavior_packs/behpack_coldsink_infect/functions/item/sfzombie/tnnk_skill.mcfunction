scoreboard players add tnnk_count tnnk_time 1
scoreboard players operation @s tnnk_time = tnnk_count tnnk_time
execute @s[scores={tnnk_time=999..}] ~~~ scoreboard players set tnnk_count tnnk_time 0

title @s actionbar §f已使用技能 §c【碎石】
tag @s add sound_interval
scoreboard players reset @s idle_time
effect @s slowness 2 7 true
event entity @s action_skill
execute @s ~~~ playsound tank.skill @a ~~~