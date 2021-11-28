#> control:menus/return/select/modify/0
#
# メニューアイコンの内容を編集する
# 一時的な変更はここで変更する
# control: Item がメニューアイコンのアイテムデータ
#

## クリエイティブでなければ削除
execute if entity @s[gamemode=!creative] run data modify storage control: Item.id set value "minecraft:air"
