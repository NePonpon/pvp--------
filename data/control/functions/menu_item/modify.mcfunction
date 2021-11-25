#> control:menu_item/modify
#
# メニューアイテムの編集
# 編集するアイテムは一つづつで`control: Item`にデータが入っている
#

## アイテム取り出し
data modify storage control: Item set from storage control: _[0]
data remove storage control: _[0]

## 編集呼び出し
function #control:menu_modify

## 表示データに追加
data modify storage control:menu Modified append from storage control: Item

# loop
execute if data storage control: _[0] run function control:menu_item/modify
