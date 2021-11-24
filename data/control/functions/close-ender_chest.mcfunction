#> control:close-ender_chest
#
# エンダーチェストを閉じたとき処理
#

tellraw @a {"score":{"name":"@s","objective":"EnderChestClose"}}

scoreboard players reset @s EnderChestClose
tag @s remove CtrlEnderChest

## 余分なアイテムを返却
function control:item_set/clear

## 確実にエンダーチェストを閉じる
execute if predicate control:low run clone ~-3 0 ~-3 ~3 ~3 ~3 ~-3 0 ~-3 filtered minecraft:ender_chest force
execute if predicate control:high run clone ~-3 ~-3 ~-3 ~3 255 ~3 ~-3 ~-3 ~-3 filtered minecraft:ender_chest force
execute unless predicate control:low unless predicate control:high run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered minecraft:ender_chest force

schedule clear control:tick
