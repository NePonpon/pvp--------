#> item:divide/loop2
#
# 共通再帰処理 2
#

data modify storage item: ItemMenus[-1] append from storage array_util: Array[-1]
data remove storage array_util: Array[-1]
execute store result storage item: ItemMenus[-1][-1].Slot byte 1 run scoreboard players get _ Common

scoreboard players add _ Common 1
execute if score _ Common matches ..23 if data storage array_util: Array[-1] run function item:divide/loop2
