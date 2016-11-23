class TwitterStream
  attr_reader :tracking_platform, :twitter_access, :logger
  def initialize
    @tracking_platform ||= TrackingPlatform.where(type: 'twitter').first
    @twitter_access ||= twitter_access
    @logger ||= Logger.new('log/twitter_process.log')
  end

  def run
    TweetStream.configure do |config|
      config.consumer_key       =  Rails.application.secrets.twitter_apikey
      config.consumer_secret    = Rails.application.secrets.twitter_apisecret
      config.oauth_token        = Rails.application.secrets.twitter_oauthtoken
      config.oauth_token_secret = Rails.application.secrets.twitter_oauthsecret
      config.auth_method        = :oauth

      TweetStream::Client.new.track('MUFC') do |status|
        puts "#{status.text}"
      end
    end
  end

  # Restart Run method if exited due to a client.stop
  TwitterStream.new.run
rescue => e
  @logger.error e.to_s
  @logger.error e.backtrace

  # No mater what happens restart the rn method!
  TwitterStream.new.run
end