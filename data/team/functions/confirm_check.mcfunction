#> team:confirm_check
#
# チーム数の正常チェックと決定
#

execute store success score Joined TeamNumber if entity @a[team=red]
scoreboard players operation TeamCount TeamNumber += Joined TeamNumber
execute store success score Joined TeamNumber if entity @a[team=blue]
scoreboard players operation TeamCount TeamNumber += Joined TeamNumber
execute store success score Joined TeamNumber if entity @a[team=green]
scoreboard players operation TeamCount TeamNumber += Joined TeamNumber
execute store success score Joined TeamNumber if entity @a[team=yellow]
scoreboard players operation TeamCount TeamNumber += Joined TeamNumber

# チーム数が2以上なら確定させる
execute if score TeamCount TeamNumber matches 2.. run function team:confirm

# チーム数が1ならエラー
execute if score TeamCount TeamNumber matches 1 run tellraw @a[gamemode=creative] {"text":"プレイするチーム数は2以上でなければいけません！","color":"red","bold":true}

# スコアホルダーリセット
scoreboard players reset TeamCount TeamNumber
scoreboard players reset Joined TeamNumber
