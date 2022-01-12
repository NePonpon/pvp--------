#> control:menus/item_menu/previous/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#

## 前のページをセット
scoreboard players remove @s ItemMenuPages 1
execute if score @s ItemMenuPages matches ..-1 run scoreboard players operation @s ItemMenuPages += $PageEnd ItemMenuPages
scoreboard players operation $Move ArrayUtilInput = @s ItemMenuPages
data modify storage array_util: Array set from storage item: ItemMenus
function array_util:api/move
data modify storage control:menu ShowMenu set from storage array_util: Array[-1]
function control:menu_apply
function array_util:api/force_delete_cache
