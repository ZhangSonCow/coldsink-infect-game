event entity @s coldsink:become_final_witch
event entity @s timer_skill_false
title @s[tag=maper] actionbar §4已复活

scoreboard objectives add sfzombie_update dummy sfzombie_update
scoreboard players set @s[tag=maper] sfzombie_update 0

title @s[tag=maper,tag=machine_back] actionbar §b被退化
replaceitem entity @s[tag=maper,tag=游戏中,tag=maper,tag=machine_back] slot.hotbar 2 coldsink:become_tnnk 1 0 {"item_lock":{"mode":"lock_in_slot"}}
event entity @s[tag=maper,tag=machine_back] coldsink:become_witch

event entity @s[tag=maper,tag=游戏中,tag=melee_damage,tag=!melee_no_kill] game_audience

tag @s[tag=maper] add respawn

effect @s[tag=!maper] health_boost 99999 19 true
effect @s[tag=!maper] instant_health 1 10 true
