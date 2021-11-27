#> control:menus/player/team_member/blue/modify/0
#
# メニューアイコンの内容を編集する
# 一時的な変更はここで変更する
# control: Item がメニューアイコンのアイテムデータ
#

## Blueチームのメンバー確認
execute if entity @a[team=blue] run function control:menus/player/team_member/blue/modify/name_add
execute unless entity @a[team=blue] run data modify storage control: Item.tag.display.Lore append value '{"text":"なし","color":"white","bold":true,"italic":false}'
