#> control:menus/show/item_menu_hub/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#


## アイテム一覧メニューに変更
data modify storage control:menu ShowMenu set from storage control:menu Menus.ItemMenuHub
## 反映
function control:menu_apply
