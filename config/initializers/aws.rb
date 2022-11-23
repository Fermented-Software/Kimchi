require 'aws-sdk-kinesis'

Aws.config.update(
  endpoint: 'http://localhost:4566',
  :access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
  :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'], 
  region: 'us-east-1',
)
