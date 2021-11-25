#> control:menu_item/click
#
# メニューがクリックされたら実行
#

scoreboard players set @s CtrlEnderChest 0

## 各メニュー別に分岐
function #control:menus

## 同じページを再表示
function control:menu_item/show

clear @s #control:all{CtrlEnderChest:true}
