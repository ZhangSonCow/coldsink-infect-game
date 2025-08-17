tag @s add melee_mode

tag @s[tag=!melee_big] remove melee_mode
title @s[tag=!melee_big] actionbar §l§f已切换 §c【重击模式】
event entity @s[tag=!melee_big] melee_turn_2

title @s[tag=melee_mode,tag=melee_big] actionbar §l§f已切换 §b【轻击模式】
event entity @s[tag=melee_mode,tag=melee_big] melee_turn_1

tag @s remove melee_mode