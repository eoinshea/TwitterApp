json.extract! tweet, :id, :username, :profile_pic, :content, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)