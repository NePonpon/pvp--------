#> item:items/weapon/covert_sword/initialize
#
# アイテムの設定をする
#

# 初期化
data remove storage item:items Initialize
data modify storage item:items Initialize set value {tag:{PlayerItem:true,Category:"weapon",ItemName:"covert_sword"},Count:1b}

## アイテムIDを指定
data modify storage item:items Initialize.id set value "minecraft:stone_sword"

## アイテムの名前を指定(任意)
data modify storage item:items Initialize.tag.display.Name set value '{"text":"隠密剣","italic":true,"color":"gray"}'

## アイテムの説明文を指定(任意)(共通項目の下に追加)
data modify storage item:items Initialize.tag.display.Lore set value ['{"text":"スニークすることで力をため、","italic":false,"color":"aqua"}','{"text":"素早く相手を切り倒す","italic":false,"color":"aqua"}']

## アイテムに追加したい情報を指定(任意)
# data modify storage item:items Initialize.tag merge value {}

## アイテムのコストを指定
data modify storage item:items Initialize.tag.Cost set value 4

## アイテムのMPを指定(任意)
# data modify storage item:items Initialize.tag.MP set value 

## アイテムのインターバルを指定(任意)
# data modify storage item:items Initialize.tag.Interval set value 

# 以下システム処理
function item:common_lore/
data modify storage item: AllItems append from storage item:items Initialize
