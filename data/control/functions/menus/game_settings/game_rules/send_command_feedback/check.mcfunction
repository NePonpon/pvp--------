#> control:menus/game_settings/game_rules/send_command_feedback/check

## このメニューが選ばれたら処理を実行
execute unless score @s CtrlEnderChest matches 1 store success score @s CtrlEnderChest run clear @s #common:all{JumpTo:"GameRules.sendCommandFeedback"} 0
execute if score @s CtrlEnderChest matches 1 run function control:menus/game_settings/game_rules/send_command_feedback/act/0
scoreboard players set @s[scores={CtrlEnderChest=1}] CtrlEnderChest 2
