#> control:menus/return/item_menu_hub/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#

## アイテム一覧メニュー画面にセット
data modify storage control:menu ShowMenu set from storage control:menu Menus.ItemMenuHub
## 反映
function control:menu_apply
