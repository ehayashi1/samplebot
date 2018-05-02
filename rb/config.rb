require 'twitter'

#APIキー設定
config = {
    consumer_key: "YOUR CONSUMER KEY",
    consumer_secret: "YOUR CONSUMER SECRET",
    access_token: "YOUR ACCESS TOKEN",
    access_token_secret: "YOUR TOKEN SECRET",
}

#投稿用オブジェクト
@restClient = Twitter::REST::Client.new(config)
#TL監視用オブジェクト
@streamingClient = Twitter::Streaming::Client.new(config)