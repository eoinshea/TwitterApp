json.extract! twitter_account, :id, :content, :name, :profile_image, :created_at, :updated_at
json.url twitter_account_url(twitter_account, format: :json)