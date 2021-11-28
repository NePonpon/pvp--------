#> team:initialize
#
# チーム設定の初期化
#

## チーム本体
team add red {"text":"赤チーム","color":"red"}
team add blue {"text":"青チーム","color":"blue"}
team add green {"text":"緑チーム","color":"green"}
team add yellow {"text":"黄チーム","color":"yellow"}
team add watch_game {"text":"観戦チーム","color":"gray"}

## チーム設定
team modify red color red
team modify blue color blue
team modify green color green
team modify yellow color yellow
team modify watch_game color gray
team modify red prefix {"text":"","color":"red"}
team modify blue prefix {"text":"","color":"bluu"}
team modify green prefix {"text":"","color":"green"}
team modify yellow prefix {"text":"","color":"yellow"}
team modify watch_game prefix {"text":"","color":"gray"}

## スコアボード
scoreboard objectives add TeamNumber dummy {"text":"チーム番号"}
