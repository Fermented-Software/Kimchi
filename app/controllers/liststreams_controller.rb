class ListstreamsController < ApplicationController

  @limit = 5
  
  def list_streams
    begin
      @client = ListstreamsHelper.create_aws_client session[:user_id]
      puts "blob"
      @resp = ListstreamsHelper.build_response(@client, @limit)
      redirect_to({:action => "index"}, notice: @resp)
    rescue UnableToRescueAwsResponse => e
      @resp.errors.add(:base, message: e.message)
      render :index, status: :unprocessable_entity
    rescue AwsCredentialValidationError => e
      @client.errors.add(:base, message: e.message)
      render :index, status: :unprocessable_entity
    end
  end

  def index
    puts session[:user_id]
  end

  helper_method :list_streams
end
