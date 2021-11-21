#> team:confirm
#
# チーム確定処理
#

# tick停止
schedule clear team:tick

# チーム数を記録
execute store result storage team: TeamCount int 1 run scoreboard players get TeamCount TeamNumber

# チーム未所属の人がいれば観戦
team join watch_game @a[team=]

## チーム所属通知
tellraw @a [{"text":"-----チームメンバー 一覧-----","bold":true}]
execute if entity @a[team=red] run tellraw @a ["・",{"text":"赤","color":"red"},"チーム ",{"selector":"@a[team=red]"}]
execute if entity @a[team=blue] run tellraw @a ["・",{"text":"青","color":"blue"},"チーム ",{"selector":"@a[team=blue]"}]
execute if entity @a[team=green] run tellraw @a ["・",{"text":"緑","color":"green"},"チーム ",{"selector":"@a[team=green]"}]
execute if entity @a[team=yellow] run tellraw @a ["・",{"text":"黄","color":"yellow"},"チーム ",{"selector":"@a[team=yellow]"}]
execute if entity @a[team=watch_game] run tellraw @a ["・",{"text":"観戦","color":"gray"},"チーム ",{"selector":"@a[team=watch_game]"}]
