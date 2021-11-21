#> team:random
#
# ランダムにチームを設定する。
# 観戦者は除外
#
# 【Minecraft】簡単チーム分け！ランダム循環採番コマンド(RCNC) #Shorts
# https://youtu.be/8qVQiXLQu4I
#

# 任意選択用エンティティ削除
function team:any/kill

## チーム数によって使うコマンドを変える
#テンプレート
#execute as [ここに対象をsort=randomで指定] store result score @s Group as @e[limit=1] store result score @s Calc run scoreboard players remove @s[scores={Calc=[ここに(２－分けるグループ数)を指定]..0}] Calc 1

# 2チーム
execute if data storage team: {TeamCount:2} as @a[team=!watch_game,sort=random] store result score @s TeamNumber as @e[limit=1] store result score @s Calc run scoreboard players remove @s[scores={Calc=0..0}] Calc 1

# 3チーム
execute if data storage team: {TeamCount:3} as @a[team=!watch_game,sort=random] store result score @s TeamNumber as @e[limit=1] store result score @s Calc run scoreboard players remove @s[scores={Calc=-1..0}] Calc 1

# 4チーム
execute if data storage team: {TeamCount:4} as @a[team=!watch_game,sort=random] store result score @s TeamNumber as @e[limit=1] store result score @s Calc run scoreboard players remove @s[scores={Calc=-2..0}] Calc 1

team leave @a
team join red @a[scores={TeamNumber=..0}]
team join blue @a[scores={TeamNumber=..-1}]
team join green @a[scores={TeamNumber=..-2}]
team join yellow @a[scores={TeamNumber=..-3}]
scoreboard players reset @a TeamNumber

data remove storage team: Selection
