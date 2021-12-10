#> control:menus/return/select/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#

## セレクト画面にセット
data modify storage control:menu ShowMenu set from storage control:menu Menus.Select
## 反映
function control:menu_apply
