#> control:menus/menu_show_test/check

## このメニューが選ばれたら処理を実行
execute unless score @s CtrlEnderChest matches 1 store success score @s CtrlEnderChest run clear @s #control:all{JumpTo:"MenuShowTest"} 0
execute if score @s CtrlEnderChest matches 1 run function control:menus/menu_show_test/act/0
scoreboard players set @s[scores={CtrlEnderChest=1}] CtrlEnderChest 2
