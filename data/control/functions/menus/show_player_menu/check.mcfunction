#> control:menus/show_player_menu/check

## このメニューが選ばれたら処理を実行
scoreboard players set @s CtrlEnderChest 0
execute store success score @s CtrlEnderChest run clear @s #control:all{JumpTo:"PlayerMenu"} 0
execute if score @s CtrlEnderChest matches 1 run function control:menus/show_player_menu/act/0
