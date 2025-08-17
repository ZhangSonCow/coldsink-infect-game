title @s actionbar §f已使用技能 §a【酸蚀】
execute @s ~~~ playsound spitter.skill @a ~~~
event entity @s spitter_acid
event entity @s action_skill
scoreboard players add acid_count spitter_time 1
scoreboard players operation @s spitter_time = acid_count spitter_time
execute @s[scores={spitter_time=999..}] ~~~ scoreboard players set spitter_count spitter_time 0