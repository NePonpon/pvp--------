#> control:menu_item/click
#
# メニューがクリックされたら実行
#

scoreboard players set @s CtrlEnderChest 0

## 各メニュー別に分岐
function #control:menus

## 同じページを再表示
function control:menu_item/show

## クリックサウンド
playsound minecraft:block.wooden_button.click_off master @s ~ ~ ~ 1 1

clear @s #control:all{CtrlEnderChest:true}
