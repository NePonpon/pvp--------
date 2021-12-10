#> control:menu_item/click
#
# メニューがクリックされたら実行
#

## 個人用ストレージ呼び出し
function oh_my_dat:please

scoreboard players set @s CtrlEnderChest 0

## クリックサウンド
playsound minecraft:block.wooden_button.click_off master @s ~ ~ ~ 1 1

## 各メニュー別に分岐
function #control:menus

## 同じページを再表示
function control:menu_item/show

clear @s #control:all{CtrlEnderChest:true}
