#> control:menus/game_settings/game_rules/send_command_feedback/modify/0
#
# メニューアイコンの内容を編集する
# 一時的な変更はここで変更する
# control: Item がメニューアイコンのアイテムデータ
#

## ゲームルールの現在の状態を表示
execute store result storage common: Success byte 1 run gamerule sendCommandFeedback

execute if data storage common: {Success:true} run data modify storage control: Item.tag.display.Lore[1] set value '[{"text":"現在の状態: ","color":"white","italic":false},{"text":"有効","color":"green","bold":true}]'
execute if data storage common: {Success:false} run data modify storage control: Item.tag.display.Lore[1] set value '[{"text":"現在の状態: ","color":"white","italic":false},{"text":"無効","color":"red","bold":true}]'
