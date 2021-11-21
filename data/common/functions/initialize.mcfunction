#> common:initialize
#
# 全システム共通初期化処理
#

scoreboard objectives add Common dummy
scoreboard objectives add Calc dummy


## 各システム初期化処理
function #common:initialize

## 初期化済みタグ
data modify storage common: Initialize set value true
