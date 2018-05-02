#おまじない
require 'twitter'
#APIキー設定を読み込む
require './config'
#タイムゾーン設定
ENV['TZ'] = 'JST-9'
#BotのIDを設定
username = "YOUR TWITTER ID"

#imageディレクトリ下にあるファイル名が『img～』のファイルを全て開く
files = Dir.glob("../image/img*")
#開いたファイルからランダムに１つ選び、image変数にセットする
image = File.new(files.sample)

#ツイート
@restClient.update_with_media("にゃー", image)

