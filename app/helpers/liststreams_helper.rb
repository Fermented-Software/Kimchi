module ListstreamsHelper

  def self.create_aws_client session_param
    id_user = session_param.values
    credentials = User.only(:aws_key, :aws_secret).find(id_user)
    #credentials = User.where(email: email).only(:aws_key, :aws_secret).last
    client  = Aws::Kinesis::Client.new(
      access_key_id: credentials[0].aws_key,
      secret_access_key: credentials[0].aws_secret
    )
    if client.nil?
      raise AwsCredentialValidationError.new
    end
    client
  end

  def self.build_response (client, limit)
    resp = client.list_streams({limit: limit})
    if resp.nil? #or resp.is_not an_instance_of(Array)
      raise UnableToRetrieveAwsResponse.new
    end
    
    resp
  end 
end
