class FavoritesController < ApplicationController

    def index 
        favorites = Favorite.all
        render json: favorites.to_json
    end 

    def create 
        params
        favorite = Favorite.new(user_id: params[:user_id], sentcharge_id: params[:sentcharge_id])
        
            if favorite.save
                render json: {status: 'favorite created successfully', favorite: favorite}, status: :created
            else
                render json: { errors: favorite.errors.full_messages }, status: :bad_request
            end
    end 

    private 

    def favorite_params
        params.require(:favorite).permit(:user_id, :sentcharge_id)
    end 
end
