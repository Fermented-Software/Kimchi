class ProfileController < ApplicationController

  # GET /profile
  def index
    @user = User.find(session[:user_id])
  end

end
