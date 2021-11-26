#> control:menus/game_settings/game_rules/commandblock_output/modify_check
#
# メニューアイコンの内容を編集したいときのみ有効化する
#

## アイテムチェック
execute if data storage control: Item.tag{JumpTo:"GameRules.commandBlockOutput"} run function control:menus/game_settings/game_rules/commandblock_output/modify/0
