#> control:menus/return/select/check

## このメニューが選ばれたら処理を実行
execute unless score @s CtrlEnderChest matches 1 store success score @s CtrlEnderChest run clear @s #control:all{JumpTo:"Return.Select"} 0
execute if score @s CtrlEnderChest matches 1 run function control:menus/return/select/act/0
scoreboard players set @s[scores={CtrlEnderChest=1}] CtrlEnderChest 2
