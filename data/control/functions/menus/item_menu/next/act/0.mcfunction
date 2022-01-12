#> control:menus/item_menu/next/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#

## 次のページをセット
scoreboard players add @s ItemMenuPages 1
execute if score @s ItemMenuPages = $PageEnd ItemMenuPages run scoreboard players set @s ItemMenuPages 0
scoreboard players operation $Move ArrayUtilInput = @s ItemMenuPages
data modify storage array_util: Array set from storage item: ItemMenus
function array_util:api/move
data modify storage control:menu ShowMenu set from storage array_util: Array[-1]
function control:menu_apply
function array_util:api/force_delete_cache
