## Time Keeping
scoreboard players add @a playtime_ticks 1

execute as @a if score @s playtime_ticks matches 20.. run scoreboard players add @s playtime_seconds 1
execute as @a if score @s playtime_seconds matches 60.. run scoreboard players add @s playtime_minutes 1
execute as @a if score @s playtime_minutes matches 60.. run scoreboard players add @s playtime_hours 1
execute as @a if score @s playtime_hours matches 24.. run scoreboard players add @s playtime_days 1

execute as @a if score @s playtime_ticks matches 20.. run scoreboard players remove @s playtime_ticks 20
execute as @a if score @s playtime_seconds matches 60.. run scoreboard players remove @s playtime_seconds 60
execute as @a if score @s playtime_minutes matches 60.. run scoreboard players remove @s playtime_minutes 60
execute as @a if score @s playtime_hours matches 24.. run scoreboard players remove @s playtime_hours 24

## Actionbar
scoreboard players enable @a playtime_timer
execute as @a[scores={playtime_timer=1}] run title @s actionbar ["",{"text":"[","bold":true,"color":"#B517AB"},{"score":{"name":"@s","objective":"playtime_days"},"bold":true,"color":"#C71585"},{"text":"d | ","bold":true,"color":"#D02090"},{"score":{"name":"@s","objective":"playtime_hours"},"bold":true,"color":"#D87093"},{"text":"h | ","bold":true,"color":"#DB7093"},{"score":{"name":"@s","objective":"playtime_minutes"},"bold":true,"color":"#D87093"},{"text":"m | ","bold":true,"color":"#D02090"},{"score":{"name":"@s","objective":"playtime_seconds"},"bold":true,"color":"#C71585"},{"text":"s]","bold":true,"color":"#B517AB"}]
execute as @a[scores={playtime_timer=2..}] run scoreboard players set @s playtime_timer 0

## Default Scoreboard Values
execute as @a run scoreboard players add @s playtime_days 0
execute as @a run scoreboard players add @s playtime_hours 0
execute as @a run scoreboard players add @s playtime_minutes 0