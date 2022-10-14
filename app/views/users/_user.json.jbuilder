json.extract! user, :id, :username, :password, :aws_key, :aws_secret, :created_at, :updated_at
json.url user_url(user, format: :json)
