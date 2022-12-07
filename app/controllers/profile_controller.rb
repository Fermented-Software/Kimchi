class ProfileController < ApplicationController

  # GET /profile
  def index
    begin
      @user = User.find(session[:user_id])
    rescue StandardError => e
      render "unauthorized/index", status: :unauthorized
    end
  end

end
