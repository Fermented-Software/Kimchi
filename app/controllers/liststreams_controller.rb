class ListstreamsController < ApplicationController
  
  def list_streams
    client  = Aws::Kinesis::Client.new
    resp    = client.list_streams({limit: 5})
    @streams = resp.stream_names
  end
  
  def index
  end

  helper_method :list_streams
  
end
