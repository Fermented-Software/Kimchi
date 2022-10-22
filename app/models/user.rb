class User
  include Mongoid::Document
  field :email, type: String
  field :password, type: String
  field :aws_key, type: String
  field :aws_secret, type: String
  validates :email,
              presence: { message: "Please fill in your e-mail"},
              format: { with: URI::MailTo::EMAIL_REGEXP, message: "Please fill in a valid e-mail" }
  validates :password, presence: { message: "Please fill in your password"}
end