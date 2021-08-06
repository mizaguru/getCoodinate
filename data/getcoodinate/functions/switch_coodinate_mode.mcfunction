






# メインハンドアイテムを一時的に保存しておく
setblock 1 1 -1 yellow_shulker_box
item replace block 1 1 -1 inventory.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with carrot_on_a_stick
tag @s add coodinate_mode

summon shulker ^ ^ ^3 {NoAI:true,NoGravity:true,Glowing:true,Invulnerable:true,Tags:["coodinater"]}
# storageの初期化
data remove storage getcoodinate:data pos








