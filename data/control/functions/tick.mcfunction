#> control:tick
#
# schedule tick loop
#

## メニューアイテム選択
execute as @a store success score @s CtrlEnderChest run clear @s #common:all{CtrlEnderChest:true} 0
execute as @a[scores={CtrlEnderChest=1}] at @s run function control:menu_item/click
scoreboard players reset @a CtrlEnderChest

## tick loop
execute if entity @a[tag=CtrlEnderChest] run schedule function control:tick 2t replace
