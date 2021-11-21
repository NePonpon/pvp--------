#> team:any/summon
#
# チームを任意で指定するときのエンティティ
#

## TODO 座標は後々決める
## 中央を決めてそこからチーム数分設置する。

#きれいにする
function team:any/kill

execute store result score TeamCount TeamNumber run data get storage team: TeamCount
summon marker -173.5 52.5 234.5 {Tags:["SelectorCenter"],Rotation:[45.0f,0.0f]}

## マーカー設置
#赤チーム
execute at @e[tag=SelectorCenter] run summon marker ^ ^ ^17 {Tags:["TeamSelector","RedTeam"]}
execute as @e[tag=SelectorCenter] at @s run tp @s ~ ~ ~ ~90 ~
scoreboard players remove TeamCount TeamNumber 1
#青チーム
execute unless score TeamCount TeamNumber matches ..0 at @e[tag=SelectorCenter] run summon marker ^ ^ ^17 {Tags:["TeamSelector","BlueTeam"]}
execute as @e[tag=SelectorCenter] at @s run tp @s ~ ~ ~ ~90 ~
scoreboard players remove TeamCount TeamNumber 1
#緑チーム
execute unless score TeamCount TeamNumber matches ..0 at @e[tag=SelectorCenter] run summon marker ^ ^ ^17 {Tags:["TeamSelector","GreenTeam"]}
execute as @e[tag=SelectorCenter] at @s run tp @s ~ ~ ~ ~90 ~
scoreboard players remove TeamCount TeamNumber 1
#黄チーム
execute unless score TeamCount TeamNumber matches ..0 at @e[tag=SelectorCenter] run summon marker ^ ^ ^17 {Tags:["TeamSelector","YellowTeam"]}

kill @e[tag=SelectorCenter]

# スコアホルダーリセット
scoreboard players reset TeamCount TeamNumber
