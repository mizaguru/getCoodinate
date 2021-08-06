










execute as @e[type=shulker] run tp ^ ^1 ^5
execute as @a[scores={rc_coodinate=1..}] as @s run data modify storage getcoodinate:data pos set from entity @e[type=shulker,tag=coodinater,limit=1] Pos
execute as @a[scores={rc_coodinate=1..}] as @s run tellraw @s [{"text": "座標を取得しました:"},{"nbt":"pos","storage": "getcoodinate:data"}]
execute as @a[scores={rc_coodinate=1..}] store result score $coodinate_x _ run data get storage getcoodinate:data pos[0]
execute as @a[scores={rc_coodinate=1..}] store result score $coodinate_y _ run data get storage getcoodinate:data pos[1]
execute as @a[scores={rc_coodinate=1..}] store result score $coodinate_z _ run data get storage getcoodinate:data pos[2]
execute as @a[scores={rc_coodinate=1..}] as @s run tp @e[type=shulker,tag=coodinater] 0 -1000 0
execute as @a[scores={rc_coodinate=1..}] as @s run kill @e[type=shulker,tag=coodinater]

execute as @a[scores={rc_coodinate=1..}] as @s run item replace entity @s weapon.mainhand from block 1 1 -1 inventory.0
execute as @a[scores={rc_coodinate=1..}] as @s run tag @s remove coodinate_mode
execute as @a[scores={rc_coodinate=1..}] as @s run scoreboard players set @s rc_coodinate 0



