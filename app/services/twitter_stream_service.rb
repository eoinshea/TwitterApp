require 'tweetstream'
class TwitterStreamService


  def initialize
    @logger  = Logger.new('log/twitter_stream.log')

    ##
    # Initialize client with tokens taken from twitter API
    @client =  TweetStream.configure do |config|
      config.consumer_key       = Rails.application.secrets.twitter_apikey
      config.consumer_secret    = Rails.application.secrets.twitter_apisecret
      config.oauth_token        = Rails.application.secrets.twitter_oauthtoken
      config.oauth_token_secret = Rails.application.secrets.twitter_oauthsecret
      config.auth_method        = :oauth
    end
  end

  def run
    #Track all chosen
    @client.new.track('BITCOIN') do |status|
      puts "#{status.text}"
    end



  rescue => e
    @logger.error e.to_s
    @logger.error e.backtrace

# No mater what happens restart the rn method!
    TwitterStream.new.run
  end
end


private

