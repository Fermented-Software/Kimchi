class ListstreamsController < ApplicationController

  def list_streams
    begin
      @client = ListstreamsHelper.create_aws_client session[:user_email]
      @resp = ListstreamsHelper.verify(@client, limit) 
      redirect_to({:action => "index"}, notice: @resp)
    rescue UnableToRescueAwsResponse => e
      @resp.errors.add(:base, message: e.message)
      render :index, status: :unprocessable_entity
    rescue AwsCredentialValidationError => e
      @client.errors.add(:base, message: e.message)
      render :index, status: :unprocessable_entity
    end
  end

  def temp_list_streams
    credentials = {:aws_key => "123", :aws_secret => "abc"}
    client = Aws::Kinesis::Client.new(
      access_key_id: credentials[:aws_key],
      secret_access_key: credentials[:aws_secret]
    )
    resp = Array.new(3, "kimchi streams")

    #flash.now[:notice] = resp
    redirect_to({:action => "index"}, notice: resp)
  end

  def index
  end

  helper_method :temp_list_streams

end
