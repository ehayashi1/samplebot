#おまじない
require 'twitter'
#APIキー設定を読み込む
require './config'
#タイムゾーン設定
ENV['TZ'] = 'JST-9'
#BotのIDを設定
username = "YOUR TWITTER ID"

@restClient.update("テスト")
