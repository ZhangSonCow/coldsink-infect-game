title @s actionbar §f已使用技能 §6【迷雾】
execute @s ~~~ summon coldsink:smoker_smoke

scoreboard objectives add wp_random dummy wp_random
scoreboard players random @s wp_random 1 3
execute @s[scores={wp_random=1},family=smoker] ~~~ playsound smoker.smoke_1 @a ~~~
execute @s[scores={wp_random=2},family=smoker] ~~~ playsound smoker.smoke_2 @a ~~~
execute @s[scores={wp_random=3},family=smoker] ~~~ playsound smoker.smoke_3 @a ~~~