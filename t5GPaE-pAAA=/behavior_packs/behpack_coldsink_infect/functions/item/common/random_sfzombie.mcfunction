scoreboard players set @s bool 0
scoreboard players set @s[hasitem={item=coldsink:become_tnnk}] bool 1
scoreboard players set @s[hasitem={item=coldsink:become_witch}] bool 1
scoreboard players set @s[family=boss] bool 1
event entity @s[scores={bool=0}] random_normal_sfzombie
event entity @s[scores={bool=1}] random_big_sfzombie