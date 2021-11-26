#> control:menus/game_settings/game_rules/commandblock_output/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#

## ゲームルールを切り替え
execute store result storage common: Success byte 1 run gamerule commandBlockOutput

execute if data storage common: {Success:true} run gamerule commandBlockOutput false
execute if data storage common: {Success:false} run gamerule commandBlockOutput true
