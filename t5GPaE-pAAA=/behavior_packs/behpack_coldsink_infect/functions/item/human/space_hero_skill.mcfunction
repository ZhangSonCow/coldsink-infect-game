title @s actionbar §f已使用技能 §b【闪现】
event entity @s time_skill_true
event entity @s coldsink:space_hero_invis
tag @s add space_hero_skill
summon coldsink:space_hero_spurt_tool ^^0.5^-0.8
effect @s speed 3 1 true
tag @s add no_any_hurt

tag @s add self
execute @s ~~~ playsound space_hero_skill @a[tag=!self] ~~~
playsound space_hero_skill.self @s
tag @s remove self