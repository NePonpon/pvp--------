#> control:menus/return/select/modify_check
#
# メニューアイコンの内容を編集したいときのみ有効化する
#

## アイテムチェック
execute if data storage control: Item.tag{JumpTo:"Return.Select"} run function control:menus/return/select/modify/0
