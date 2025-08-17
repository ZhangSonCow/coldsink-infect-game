execute @s[tag=maper,tag=游戏中,tag=母体] ~~~ tellraw @a {"rawtext":[{"text":"§4"},{"selector":"@s"},{"text":" 被选为母体"}]}
execute @s[tag=maper,tag=游戏中,tag=大母体] ~~~ tellraw @a {"rawtext":[{"text":"§4"},{"selector":"@s"},{"text":" 被选为特殊母体"}]}
execute @s[tag=maper,tag=游戏中,tag=!母体,tag=!大母体] ~~~ playsound human_infect @a[tag=maper]

tag @s add lie_down

tag @s add dead
tag @s remove spawned