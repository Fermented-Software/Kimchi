json.extract! user, :id, :email, :password, :aws_key, :aws_secret, :created_at, :updated_at
json.url user_url(user, format: :json)
