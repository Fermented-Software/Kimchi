module ListstreamsHelper

  def self.create_aws_client
    credentials = User.where(email: session[:user_email]).only(:aws_key, :aws_secret).last
    client  = Aws::Kinesis::Client.new(
      access_key_id: credentials[:aws_key],
      secret_access_key: credentials[:aws_secret]
    )

    if client.empty? or client.nil?
      raise AwsCredentialValidationError.new
    end
    client
  end

  def self.verify (client, limit)
    resp = client.list_streams({limit: limit})

    if resp.nil? #or resp.is_not an_instance_of(Array)
      raise UnableToRetrieveAwsResponse.new
    end
    
    resp
  end


  
end
