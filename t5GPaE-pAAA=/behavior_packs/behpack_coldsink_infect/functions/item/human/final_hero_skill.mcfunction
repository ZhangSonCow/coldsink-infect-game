title @s actionbar §f已使用技能 §b【四连斩】
event entity @s action_skill
effect @s speed 2 2 true
tag @s add final_hero_skill
tag @s add self
execute @s ~~~ playsound final_hero_skill @a[tag=!self] ~~~
playsound final_hero_skill.self @s
tag @s remove self