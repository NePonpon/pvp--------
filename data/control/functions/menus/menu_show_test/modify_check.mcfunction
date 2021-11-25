#> control:menus/menu_show_test/modify_check
#
# メニューアイコンの内容を編集したいときのみ有効化する
#

## アイテムチェック
execute if data storage control: Item.tag{JumpTo: "MenuShowTest"} run function control:menus/menu_show_test/modify/0
