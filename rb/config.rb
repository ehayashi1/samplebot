require 'twitter'

#API�L�[�ݒ�
config = {
    consumer_key: "YOUR CONSUMER KEY",
    consumer_secret: "YOUR CONSUMER SECRET",
    access_token: "YOUR ACCESS TOKEN",
    access_token_secret: "YOUR TOKEN SECRET",
}

#���e�p�I�u�W�F�N�g
@restClient = Twitter::REST::Client.new(config)
#TL�Ď��p�I�u�W�F�N�g
@streamingClient = Twitter::Streaming::Client.new(config)