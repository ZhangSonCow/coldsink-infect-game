event entity @s coldsink:become_final_tnnk
event entity @s action_clear
title @s[tag=maper] actionbar §4已复活

scoreboard objectives add sfzombie_update dummy sfzombie_update
scoreboard players set @s[tag=maper] sfzombie_update 0

title @s[tag=maper,tag=machine_back] actionbar §b被退化
replaceitem entity @s[tag=maper,tag=游戏中,tag=maper,tag=machine_back] slot.hotbar 2 coldsink:become_witch 1 0 {"item_lock":{"mode":"lock_in_slot"}}
event entity @s[tag=maper,tag=machine_back] coldsink:become_tnnk

event entity @s[tag=maper,tag=游戏中,tag=melee_damage,tag=!melee_no_kill] game_audience

tag @s[tag=maper] add respawn

effect @s[tag=!maper] health_boost 99999 24 true
effect @s[tag=!maper] instant_health 1 10 true
