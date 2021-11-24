#> common:initialize
#
# 全システム共通初期化処理
#

scoreboard objectives add Common dummy
scoreboard objectives add Calc dummy

#> forceload
forceload add 0 0

#> システムブロック
setblock 1 1 1 shulker_box
setblock 1 2 1 oak_sign

## 各システム初期化処理
function #common:initialize

## 初期化済みタグ
data modify storage common: Initialize set value true
