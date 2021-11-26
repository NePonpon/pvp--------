#> control:menus/game_settings/game_rules/send_command_feedback/modify_check
#
# メニューアイコンの内容を編集したいときのみ有効化する
#

## アイテムチェック
execute if data storage control: Item.tag{JumpTo:"GameRules.sendCommandFeedback"} run function control:menus/game_settings/game_rules/send_command_feedback/modify/0
