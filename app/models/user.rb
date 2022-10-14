class User
  include Mongoid::Document
  field :username, type: String
  field :password, type: String
  field :aws_key, type: String
  field :aws_secret, type: String
end