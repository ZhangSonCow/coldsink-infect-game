title @s actionbar §f已使用技能 §b【奥术手榴弹】
event entity @s action_skill
tag @s add self
execute @s ~~~ playsound machine_hero_skill @a[tag=!self] ~~~
playsound machine_hero_skill.self @s
tag @s remove self