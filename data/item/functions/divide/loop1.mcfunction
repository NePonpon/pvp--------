#> item:divide/loop1
#
# 共通再帰処理 1
#

scoreboard players set _ Common 0
data modify storage item: ItemMenus append value []
function item:divide/loop2

execute store result storage item: PageCount int 1 run data get storage item: PageCount 0.999999999
execute unless data storage item: {PageCount:0} run function item:divide/loop1
