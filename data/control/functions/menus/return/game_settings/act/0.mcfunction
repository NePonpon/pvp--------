#> control:menus/return/game_settings/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#

## ゲーム設定画面にセット
data modify storage control:menu ShowMenu set from storage control:menu Menus.GameSettings
## 反映
function control:menu_apply
