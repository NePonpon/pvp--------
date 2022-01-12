#> item:divide/
#
# アイテムを表示ページごとに分類
#

## 各ジャンルごとにページを作成

scoreboard players set $PageEnd ItemMenuPages 0
scoreboard players set _ Calc 25
data remove storage array_util: Array
data remove storage item: ItemMenus

# Armors
scoreboard players operation $Armors ItemMenuPages = $PageEnd ItemMenuPages
data modify storage array_util: Array append from storage item: AllItems[{tag:{Category:"armor"}}]
execute store result score _ Common run data get storage array_util: Array
scoreboard players operation _ Common /= _ Calc
execute store result storage item: PageCount int 1 run scoreboard players add _ Common 1
scoreboard players operation $PageEnd ItemMenuPages += _ Common
function array_util:api/reverse
function item:divide/loop1

# Magics
scoreboard players operation $Magics ItemMenuPages = $PageEnd ItemMenuPages
data modify storage array_util: Array append from storage item: AllItems[{tag:{Category:"magic"}}]
execute store result score _ Common run data get storage array_util: Array
scoreboard players operation _ Common /= _ Calc
execute store result storage item: PageCount int 1 run scoreboard players add _ Common 1
scoreboard players operation $PageEnd ItemMenuPages += _ Common
function array_util:api/reverse
function item:divide/loop1

# Skills
scoreboard players operation $Skills ItemMenuPages = $PageEnd ItemMenuPages
data modify storage array_util: Array append from storage item: AllItems[{tag:{Category:"skill"}}]
execute store result score _ Common run data get storage array_util: Array
scoreboard players operation _ Common /= _ Calc
execute store result storage item: PageCount int 1 run scoreboard players add _ Common 1
scoreboard players operation $PageEnd ItemMenuPages += _ Common
function array_util:api/reverse
function item:divide/loop1

# Weapons
scoreboard players operation $Weapons ItemMenuPages = $PageEnd ItemMenuPages
data modify storage array_util: Array append from storage item: AllItems[{tag:{Category:"weapon"}}]
execute store result score _ Common run data get storage array_util: Array
scoreboard players operation _ Common /= _ Calc
execute store result storage item: PageCount int 1 run scoreboard players add _ Common 1
scoreboard players operation $PageEnd ItemMenuPages += _ Common
function array_util:api/reverse
function item:divide/loop1

## 各ページに必要なボタンを設置
function control:menus/item_menu/next/initialize
data modify storage item: ItemMenus[] append from storage control:menu Initialize
function control:menus/item_menu/previous/initialize
data modify storage item: ItemMenus[] append from storage control:menu Initialize
function control:menus/return/item_menu_hub/initialize
data modify storage item: ItemMenus[] append from storage control:menu Initialize
