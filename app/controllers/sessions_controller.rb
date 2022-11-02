class SessionsController < ApplicationController
    def login_receive
        @user = User.new
    end

    def create
        @user = User.new(:email => params[:email], :password=> params[:password])

        if @user.valid?
            user = User.where(email: @user.email).first

            if user.nil?
                @user.errors.add(:email, message: "This email is not registered")
                render :login_receive, status: :unprocessable_entity
            else
                if user.password == @user.password
                    session[:user_email] = @user.email
                    redirect_to dashboard_index_path
                else
                    @user.errors.add(:email, message: "Wrong password")
                    render :login_receive, status: :unprocessable_entity
                end
            end
        else
            render :login_receive, status: :unprocessable_entity
        end
    end
end
