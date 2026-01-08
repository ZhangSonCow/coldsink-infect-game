clear @s coldsink:middle_final_tnnk
clear @s coldsink:middle_tyrant_tnnk
clear @s coldsink:middle_armor_tnnk

event entity @s coldsink:become_final_tnnk
title @s[tag=!back] actionbar §f已扮演 §c炼狱泰坦
clear @s coldsink:become_tnnk 0 1
give @s coldsink:become_final_tnnk 1 0 {"item_lock":{"mode":"lock_in_inventory"}}