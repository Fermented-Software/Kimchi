class ProfileController < ApplicationController

  # GET /profile
  def show
    @user = User.find(session[:user_id])
  end

end
