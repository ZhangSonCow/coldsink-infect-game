event entity @s coldsink:witch_cry_over

tag @s add sound_interval
scoreboard players reset @s idle_time

tag @s add ghost_tp_self
execute @e[type=coldsink:ghost_light_sign,scores={witch_check=0},c=1] ~~~ playsound ghost.witch.skill_end @a[tag=!ghost_tp_self,r=16] ~~~
playsound ghost.witch.skill_end.self @s
tag @s remove ghost_tp_self

title @s actionbar §f已使用技能 §b【传送】
replaceitem entity @s slot.hotbar 8 coldsink:skill_cooldown 18 0 {"item_lock":{"mode":"lock_in_slot"}}
scoreboard players operation @e[type=coldsink:ghost_light_sign] witch_check = @s witch_time
execute @e[type=coldsink:ghost_light_sign] ~~~ scoreboard players operation @s witch_check -= @s witch_time

execute @s[tag=maper] ~~~ execute @e[type=coldsink:ghost_light_sign,scores={witch_check=0},c=1] ~~~ effect @e[family=player,family=!tool,type=!item,tag=!neutral,r=8] slowness 4 1 true
execute @s[tag=maper] ~~~ execute @e[type=coldsink:ghost_light_sign,scores={witch_check=0},c=1] ~~~ title @a[family=player,family=!tool,tag=!neutral,r=8] actionbar §b【幽鬼女巫】 §f已来袭
tp @s[tag=maper] @e[type=coldsink:ghost_light_sign,scores={witch_check=0},c=1]

tag @s[tag=!maper] add ghost_tp_self
execute @s[tag=!maper] ~~~ execute @e[type=coldsink:ghost_light_sign,scores={witch_check=0},c=1] ~~~ effect @e[tag=!ghost_tp_self,family=!tool,type=!item,tag=!neutral,r=8] slowness 4 1 true
execute @s[tag=!maper] ~~~ execute @e[type=coldsink:ghost_light_sign,scores={witch_check=0},c=1] ~~~ title @a[tag=!ghost_tp_self,family=!tool,tag=!neutral,r=8] actionbar §b【幽鬼女巫】 §f已来袭
tp @s[tag=!maper] @e[type=coldsink:ghost_light_sign,scores={witch_check=0},c=1]
tag @s[tag=!maper] remove ghost_tp_self

execute @e[type=coldsink:ghost_light_sign,scores={witch_check=0},c=1] ~~~ particle nacal_sdc:ghost_witch_appear ~~~

event entity @e[type=coldsink:ghost_light_sign,scores={witch_check=0},c=1] godie
