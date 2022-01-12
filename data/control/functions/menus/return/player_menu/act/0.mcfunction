#> control:menus/return/player_menu/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#

## プレイヤー設定画面にセット
data modify storage control:menu ShowMenu set from storage control:menu Menus.Player
## 反映
function control:menu_apply
