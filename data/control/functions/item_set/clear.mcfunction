#> control:item_set/clear
#
# エンダーチェストにメニューをセットするとき
# このfunctionを呼び出してきれいにすること
#
# 操作用以外のアイテムがエンダーチェストに入っていた場合、返却する。
#

## ストレージに移動
data modify storage control: EnderItems set from entity @s EnderItems

## 操作用アイテムを削除
data remove storage control: EnderItems[{tag:{CtrlEnderChest:true}}]

## 残っているアイテムは返却用
# シュルカーボックスに移してプレイヤーの位置にSpawn
# 即時取得させる。
data modify block 1 1 1 Items set from storage control: EnderItems
loot spawn ~ ~ ~ mine 1 1 1 minecraft:debug_stick
execute as @e[type=item,nbt={Age:0s}] run data modify entity @s PickupDelay set value 0s

## 空にする
data modify block 1 1 1 Items set value []
loot replace entity @s enderchest.0 27 mine 1 1 1 debug_stick
