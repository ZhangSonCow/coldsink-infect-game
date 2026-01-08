tag @s add sound_interval
scoreboard players reset @s idle_time

title @s actionbar §f已使用技能 §6【砸地】
effect @s levitation 1 8 true
event entity @s action_skill

playsound armor.tnnk.skill_1 @a[r=16] ~~~

particle nacal_sdc:armor_tnnk_skill_1 ~~~