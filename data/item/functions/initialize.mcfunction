#> item:initialize

#> Scoreboard-Objectives
scoreboard objectives add ItemMenuPages dummy

## アイテム一覧の初期化
# アイテムデータ読み込み
data remove storage item: AllItems
function #item:item_init
# ページに分類
function item:divide/
