#> control:menus/player/team_member/green/modify/0
#
# メニューアイコンの内容を編集する
# 一時的な変更はここで変更する
# control: Item がメニューアイコンのアイテムデータ
#

## Greenチームのメンバー確認
execute if entity @a[team=green] run function control:menus/player/team_member/green/modify/name_add
execute unless entity @a[team=green] run data modify storage control: Item.tag.display.Lore append value '{"text":"なし","color":"white","bold":true,"italic":false}'
