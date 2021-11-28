#> common:player_name/reset
#
# プレイヤー名取得処理のリセットをする  
# `common:player_name/get`  
# を実行する前に実行する。
#

data remove storage common: PlayerNames
scoreboard players reset @a PlayerNameNumber
scoreboard players reset $Count PlayerNameNumber
