#> control:menus/item_menu/hub/armors/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#

## Armorのページを表示する
execute store result score $Move ArrayUtilInput run scoreboard players operation @s ItemMenuPages = $Armors ItemMenuPages
data modify storage array_util: Array set from storage item: ItemMenus
function array_util:api/move
data modify storage control:menu ShowMenu set from storage array_util: Array[-1]
function control:menu_apply
function array_util:api/force_delete_cache
