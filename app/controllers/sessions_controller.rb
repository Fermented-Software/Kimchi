class SessionsController < ApplicationController
    def login_receive
        @user = User.new
    end

    def create
        @user = User.new(:email => params[:email], :password => params[:password])

        if @user.valid?
            begin
                stored_user = SessionsHelper.create_session(@user.email, @user.password)
            rescue NonExistentUserError => e
                @user.errors.add(:email, message: "This email is not registered")
                render :login_receive, status: :unprocessable_entity and return
            rescue InvalidPasswordError => e
                @user.errors.add(:email, message: "Wrong password")
                render :login_receive, status: :unprocessable_entity and return
            end

            if stored_user.email == @user.email
                session[:user_email] == stored_user.email
                redirect_to dashboard_index_path
            end
        else
            render :login_receive, status: :unprocessable_entity
        end
    end
end
