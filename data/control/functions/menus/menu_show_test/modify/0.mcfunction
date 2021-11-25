#> control:menus/menu_show_test/modify/0
#
# メニューアイコンの内容を編集する
# 一時的な変更はここで変更する。
# control: Item がメニューアイコンのアイテムデータ
#

## Lore 2行目に @s Common のスコアを表示
execute store result storage common: _ int 1 run scoreboard players get @s Common
data modify block 1 2 1 Text1 set value '[{"text":"Common: "},{"storage":"common:","nbt":"_"}]'
data modify storage control: Item.tag.display.Lore[1] set from block 1 2 1 Text1
