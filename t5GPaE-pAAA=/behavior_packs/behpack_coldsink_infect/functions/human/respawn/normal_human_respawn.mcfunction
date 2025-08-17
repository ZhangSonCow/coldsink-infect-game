event entity @s coldsink:jockey_control_over
event entity @s coldsink:tnnk_howl_control_over
event entity @s action_clear

clear @s[tag=游戏中]
event entity @s[tag=游戏中] coldsink:entry_lid_down
effect @s[tag=游戏中] slowness 99999 7 true
effect @s[tag=游戏中] weakness 99999 10 true
effect @s[tag=游戏中] health_boost 99999 4 true
effect @s[tag=游戏中] instant_health 99999 10 true

tag @s[tag=maper] add respawn

scoreboard objectives add sfzombie_update dummy sfzombie_update
scoreboard players set @s[tag=maper,tag=!neutral] sfzombie_update 0

clear @s[tag=maper] coldsink:become_human_hero
clear @s[tag=maper] coldsink:become_savior_hero

title @s[tag=游戏中,tag=!neutral] title §l§4 请选择成为的特感
tag @s[tag=maper] remove 母体
replaceitem entity @s[tag=游戏中,tag=!大母体,tag=!neutral] slot.hotbar 0 coldsink:become_hunter 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=游戏中,tag=!大母体,tag=!neutral] slot.hotbar 1 coldsink:become_spitter 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=游戏中,tag=!大母体,tag=!neutral] slot.hotbar 2 coldsink:become_charger 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=游戏中,tag=!大母体,tag=!neutral] slot.hotbar 3 coldsink:become_jockey 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=游戏中,tag=!大母体,tag=!neutral] slot.hotbar 4 coldsink:become_boomer 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=游戏中,tag=!大母体,tag=!neutral] slot.hotbar 5 coldsink:become_smoker 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=游戏中,tag=大母体,tag=!neutral] slot.hotbar 0 coldsink:become_tnnk 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=游戏中,tag=大母体,tag=!neutral] slot.hotbar 1 coldsink:become_witch 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=游戏中,tag=!neutral] slot.hotbar 8 coldsink:random_sfzombie 1 0 {"item_lock":{"mode":"lock_in_slot"}}
tag @s[tag=maper] remove 大母体
