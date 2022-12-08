class SessionsController < ApplicationController
    def login
      @user = User.new
    end

    def create
        @user = User.new(:email => params[:email], :password => params[:password])

        begin
            stored_user = SessionsHelper.create_session(@user)
            session[:user_id] = stored_user.id
            redirect_to dashboard_index_path
        rescue NonExistentUserError => e
            @user.errors.add(:base, message: e.message)
            render :login, status: :unprocessable_entity
        end
    end
end
