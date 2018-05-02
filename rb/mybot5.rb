#おまじない
require 'twitter'
#APIキー設定を読み込む
require './config'
#タイムゾーン設定
ENV['TZ'] = 'JST-9'
#BotのIDを設定
username = "YOUR TWITTER ID"

#無限ループ
loop do
    #現在時刻取得
    now = Time.now
    @restClient.update("只今の時刻は #{now} です。")

    #sleep_time秒間待機
    sleep_time = 60
    sleep sleep_time
end