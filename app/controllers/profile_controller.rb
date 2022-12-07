class ProfileController < ApplicationController

  # GET /profile
  def index
    begin
      @user = User.find(session[:user_id])
    rescue StandardError => e
      redirect_to "/unauthorized", status: :unauthorized
    end
  end

end
