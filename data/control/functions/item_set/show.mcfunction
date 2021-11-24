#> control:item_set/show
#
# プレイヤーのエンダーチェストにメニューを表示
#

# エンダーチェストにメニューをセットするときに必ず最初に片付ける
function control:item_set/clear

## シュルカーボックスにページ情報をセット
data modify block 1 1 1 Items set from storage control:menu ShowMenu

## プレイヤーのエンダーチェストに表示
loot replace entity @s enderchest.0 27 mine 1 1 1 debug_stick
