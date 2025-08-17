clear @s coldsink:middle_final_hero
clear @s coldsink:middle_space_hero
clear @s coldsink:middle_fist_hero

event entity @s coldsink:become_final_hero
title @s[tag=!back] actionbar §f已扮演 §b终极猎手
clear @s coldsink:become_human_hero 0 1
give @s coldsink:become_final_hero 1 0 {"item_lock":{"mode":"lock_in_inventory"}}