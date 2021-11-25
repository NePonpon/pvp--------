#> control:menus/show_player_menu/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#

say ShowPlayerMenu

## ページを切り替え
data modify storage control:menu ShowMenu set from storage control:menu Menus.Player

## 同じページを再表示
function control:item_set/show
