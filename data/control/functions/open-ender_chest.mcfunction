#> control:open-ender_chest
#
# 参考 [Ai-Akaishi/X9EnderChest](https://github.com/Ai-Akaishi/X9EnderChest)
#
# エンダーチェストを開けた時、設定画面を表示する。
#

## 開けた時、アイテムをセット
#Not クリエイティブ
execute if entity @s[gamemode=!creative] run data modify storage control:menu ShowMenu set from storage control:menu Menus.Player
#クリエイティブ
execute if entity @s[gamemode=creative] run data modify storage control:menu ShowMenu set from storage control:menu Menus.Select
#表示
function control:menu_item/show

## メニュー操作中タグ付与
tag @s add CtrlEnderChest

## メニュー操作tick起動
schedule function control:tick 1t replace

## close検知準備
item replace entity @s armor.head with stone_button{EnderChestClose:true}

scoreboard players reset @s CtrlEnderChest
advancement revoke @s only control:open-ender_chest

tellraw @a [{"selector":"@s"}," がメニューを開いた"]
