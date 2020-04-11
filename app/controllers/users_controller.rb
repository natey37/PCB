class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users.to_json 
    end 

    def create 
        puts params
        user = User.new(name: params[:name], email: params[:email], username: params[:username], password: params[:password])
        
            if user.save
                UserMailer.welcome_email(user).deliver_now

                render json: {status: 'usercharge created successfully', user: user}, status: :created
            else
                render json: { errors: user.errors.full_messages }, status: :bad_request
            end
    end 

    private 

    def user_params 
        params.require(:user).permit(:name, :email, :username, :password)
    end     
end
