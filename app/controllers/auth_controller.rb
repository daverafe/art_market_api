class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create 
        @user = User.find_by(email: user_login_params[:email])
        if @user && @user.authenticate(user_login_params[:password])
            token = encode_token({user_id: @user_id})
            render json: {user: @user, jwt: token}, status: :created, location: @user
        else
            render json: {message: 'Invalid email or password'}, status: :unprocessable_entity
        end
    end

    private

    def user_login_params
        params.require(:user).permit(:email, :password)
    end
end