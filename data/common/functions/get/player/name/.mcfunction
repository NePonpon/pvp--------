#> common:get/player/name/
#
# プレイヤーの名前を取得する  
# as <プレイヤー> で指定されたプレイヤーの名前を取得する。
#
# `@s PlayerNamesNumber`  
# に取得した順番が記録される。
#
# 必ずこのfunctionを実行する前に、  
# `common:get/player/name/reset`  
# を実行すること。
#
# @input as player
# @output storage common: PlayerNames
#
#@api

loot replace block 1 1 1 container.0 loot common:player_name
data modify storage common: PlayerNames append from block 1 1 1 Items[{Slot:0b}].tag.SkullOwner.Name
execute store result score @s PlayerNameNumber run scoreboard players add $Count PlayerNameNumber 1
