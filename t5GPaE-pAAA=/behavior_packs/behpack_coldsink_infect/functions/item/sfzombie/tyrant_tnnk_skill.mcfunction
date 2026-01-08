tag @s add sound_interval
scoreboard players reset @s idle_time

title @s actionbar §f已使用技能 §8【连锤】
event entity @s action_skill

tag @s add self
execute @s ~~~ playsound tyrant.tnnk.skill @a[tag=!self] ~~~
playsound tyrant.tnnk.skill.self @s
tag @s remove self