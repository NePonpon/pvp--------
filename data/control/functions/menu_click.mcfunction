#> control:menu_click
#
# メニューがクリックされたら実行
#

say control:menu_click

## 各メニュー別に分岐
function #control:menus

clear @s #control:all{CtrlEnderChest:true}
