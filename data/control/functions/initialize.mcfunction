#> control:initialize

## スコアボード
scoreboard objectives add CtrlEnderChest minecraft.custom:open_enderchest

## メニューボタンの初期化
data remove storage control:menu Menus
function #control:menu_init
