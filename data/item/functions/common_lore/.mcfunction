#> item:common_lore/
#
# 全てのアイテムに共通な
# Loreを付与する
#

#> 共通表示Lore
#
# コスト
# MP
# インターバル
#

data remove storage item: CommonLore

## コスト(必須)
function item:common_lore/cost

## MP(任意)
execute if data storage item:items Initialize.tag.MP run function item:common_lore/mp

## インターバル(任意)
execute if data storage item:items Initialize.tag.Interval run function item:common_lore/interval

execute if data storage item:items Initialize.tag.display.Lore run data modify storage item: CommonLore append value '{"text":""}'
data modify storage item:items Initialize.tag.display.Lore prepend from storage item: CommonLore[]
