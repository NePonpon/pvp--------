#> control:menu_item/show
#
# プレイヤーのエンダーチェストにメニューを表示
#

# エンダーチェストにメニューをセットするときに必ず最初に片付ける
function control:menu_item/clear

## ページアイテムを編集
data remove storage control: Item
data remove storage control:menu Modified
data modify storage control: _ set from storage control:menu ShowMenu
function control:menu_item/modify

## シュルカーボックスにページ情報をセット
data modify block 1 1 1 Items set from storage control:menu Modified

## プレイヤーのエンダーチェストに表示
loot replace entity @s enderchest.0 27 mine 1 1 1 debug_stick
