#> control:menus/game_settings/game_rules/send_command_feedback/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#

## ゲームルールを切り替え
execute store result storage common: Success byte 1 run gamerule sendCommandFeedback

execute if data storage common: {Success:true} run gamerule sendCommandFeedback false
execute if data storage common: {Success:false} run gamerule sendCommandFeedback true
