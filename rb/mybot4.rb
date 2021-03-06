#おまじない
require 'twitter'
require 'open-uri'
#APIキー設定を読み込み
require './config'
#タイムゾーン設定
ENV['TZ'] = 'JST-9'

#ボットのアカウント名
username = "YOUR TWITTER ID"

#TLを監視
@streamingClient.user do |tweet|
    #自分宛てのメンションを見つけた場合
    if  tweet.class == Twitter::Tweet && tweet.text.include?("@#{username}") && !tweet.in_reply_to_status_id
        #送り主のidを取得
        senderid = tweet.user.screen_name
        #送り主のユーザ名を取得
        sendername = tweet.user.name

        puts "Found tweet: #{tweet} from #{senderid}"

        if tweet.text.include?("とは？")
            keyword = tweet.text.slice(/@#{username}(.*?)とは/, 1)
            puts "検索キーワード：#{keyword}
            url = URI.escape("https://www.google.co.jp/search?q=#{keyword}")
            @restClient.update("@#{senderid} 検索してね。\n#{url}", in_reply_to_status_id: tweet.id)

        else
            @restClient.update("@#{senderid} ごめんね。わからないよ。", in_reply_to_status_id: tweet.id)

        end
    end
end




