#> control:menus/show/game_rules/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#


## ゲームルール一覧を表示
data modify storage control:menu ShowMenu set from storage control:menu Menus.GameRules
## 反映
function control:menu_apply
