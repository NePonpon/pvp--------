#> team:any/summon
#
# チームを任意で指定するときのエンティティ
#

#きれいにする
function team:any/kill

summon marker -173.5 52.5 234.5 {Tags:["SelectorCenter"],Rotation:[45.0f,0.0f]}

## マーカー設置
#黄チーム
execute at @e[tag=SelectorCenter] run summon marker ^ ^ ^17 {Tags:["TeamSelector","YellowTeam"]}
execute as @e[tag=SelectorCenter] at @s run tp @s ~ ~ ~ ~90 ~
#緑チーム
execute unless score TeamCount TeamNumber matches ..0 at @e[tag=SelectorCenter] run summon marker ^ ^ ^17 {Tags:["TeamSelector","GreenTeam"]}
execute as @e[tag=SelectorCenter] at @s run tp @s ~ ~ ~ ~90 ~
#赤チーム
execute unless score TeamCount TeamNumber matches ..0 at @e[tag=SelectorCenter] run summon marker ^ ^ ^17 {Tags:["TeamSelector","RedTeam"]}
execute as @e[tag=SelectorCenter] at @s run tp @s ~ ~ ~ ~90 ~
#青チーム
execute unless score TeamCount TeamNumber matches ..0 at @e[tag=SelectorCenter] run summon marker ^ ^ ^17 {Tags:["TeamSelector","BlueTeam"]}

kill @e[tag=SelectorCenter]
