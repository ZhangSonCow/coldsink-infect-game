event entity @s coldsink:become_witch
event entity @s timer_skill_false
replaceitem entity @s[tag=maper,tag=游戏中] slot.hotbar 2 coldsink:become_tnnk 1 0 {"item_lock":{"mode":"lock_in_slot"}}
title @s[tag=maper] actionbar §4已复活

scoreboard objectives add sfzombie_update dummy sfzombie_update
scoreboard players set @s[tag=maper] sfzombie_update 0

title @s[tag=maper,tag=machine_back] actionbar §b被退化
event entity @s[tag=maper,tag=machine_back] random_normal_sfzombie
scoreboard players random @s[tag=maper,tag=machine_back] wp_random 1 6
event entity @s[tag=maper,tag=machine_back,scores={wp_random=1}] coldsink:become_hunter
event entity @s[tag=maper,tag=machine_back,scores={wp_random=2}] coldsink:become_spitter
event entity @s[tag=maper,tag=machine_back,scores={wp_random=3}] coldsink:become_charger
event entity @s[tag=maper,tag=machine_back,scores={wp_random=4}] coldsink:become_jockey
event entity @s[tag=maper,tag=machine_back,scores={wp_random=5}] coldsink:become_boomer
event entity @s[tag=maper,tag=machine_back,scores={wp_random=6}] coldsink:become_smoker
replaceitem entity @s[tag=maper,tag=machine_back] slot.hotbar 1 coldsink:become_hunter 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=maper,tag=machine_back] slot.hotbar 2 coldsink:become_spitter 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=maper,tag=machine_back] slot.hotbar 3 coldsink:become_charger 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=maper,tag=machine_back] slot.hotbar 4 coldsink:become_jockey 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=maper,tag=machine_back] slot.hotbar 5 coldsink:become_boomer 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=maper,tag=machine_back] slot.hotbar 6 coldsink:become_smoker 1 0 {"item_lock":{"mode":"lock_in_slot"}}

event entity @s[tag=maper,tag=游戏中,tag=melee_damage,tag=!melee_no_kill] game_audience

tag @s[tag=maper] add respawn

effect @s[tag=!maper] health_boost 99999 14 true
effect @s[tag=!maper] instant_health 1 10 true

tag @s add respawn_give