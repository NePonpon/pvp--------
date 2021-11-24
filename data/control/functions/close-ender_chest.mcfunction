#> control:close-ender_chest
#
# エンダーチェストを閉じたとき処理
#

scoreboard players reset @s EnderChestClose
tag @s remove CtrlEnderChest

## 余分なアイテムを返却
function control:item_set/clear

schedule clear control:tick
