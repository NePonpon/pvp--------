#> control:item_set/select

## クリエイティブ専用の分岐ページを指定
data modify storage control:menu ShowMenu set from storage control:menu Menus.Select

# 表示functionを呼び出し
function control:item_set/show


# ## ゲーム設定用のメニューとプレイヤー用のメニューの分岐
# # メニューを操作メニューへの分岐も追加
# item replace entity @s enderchest.12 with grass_block{CtrlEnderChest:true,JumpTo:"PlayerMenu",display:{Name:'{"text":"プレイヤーメニュー","color":"green","bold":true}'}}
# item replace entity @s enderchest.14 with enchanting_table{CtrlEnderChest:true,JumpTo:"GameCtrlMenu",display:{Name:'{"text":"ゲーム設定メニュー","color":"yellow","bold":true}'}}
# item replace entity @s enderchest.12 with grass_block{CtrlEnderChest:true,JumpTo:"PlayerMenu",display:{Name:'{"text":"プレイヤーメニュー","color":"green","bold":true}'}}
