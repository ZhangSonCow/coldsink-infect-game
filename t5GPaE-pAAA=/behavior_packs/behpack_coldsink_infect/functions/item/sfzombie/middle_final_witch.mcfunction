clear @s coldsink:middle_final_witch
clear @s coldsink:middle_ghost_witch
clear @s coldsink:middle_queen_witch

event entity @s coldsink:become_final_witch
title @s[tag=!back] actionbar §f已扮演 §d恶灵女巫
clear @s coldsink:become_witch 0 1
give @s coldsink:become_final_witch 1 0 {"item_lock":{"mode":"lock_in_inventory"}}