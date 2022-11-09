class ListstreamsController < ApplicationController

  def list_streams
    credentials = User.where(email: session[:user_email]).only(:aws_key, :aws_secret).last
    client  = Aws::Kinesis::Client.new(
      access_key_id: credentials[:aws_key],
      secret_access_key: credentials[:aws_secret]
    )
    resp = client.list_streams({limit: 5})
    @streams = resp.stream_names
  end

  def index
  end

  helper_method :list_streams

end
