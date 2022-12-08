module ListstreamsHelper
  def self.create_aws_client(session_param)
    id_user = session_param
    credentials = User.only(:aws_key, :aws_secret).find(id_user)
    client =
      Aws::Kinesis::Client.new(
        access_key_id: credentials[0].aws_key,
        secret_access_key: credentials[0].aws_secret
      )
    raise AwsCredentialValidationError.new if client.nil?
    client
  end

  def self.build_response(client, limit)
    resp = client.list_streams({ limit: limit })
    if resp.nil? #or resp.is_not an_instance_of(Array)
      raise UnableToRetrieveAwsResponse.new
    end

    resp[:stream_names]
  end
end
