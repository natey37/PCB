class SentchargesController < ApplicationController

    def index 
        sentcharges = Sentcharge.all
        render json: sentcharges.to_json
    end 

    def create 
        sentcharge = Sentcharge.new(sentcharge_params)
        
            if sentcharge.save
                render json: {status: 'Sentcharge created successfully', sentcharge: sentcharge}, status: :created
            else
                render json: { errors: sentcharge.errors.full_messages }, status: :bad_request
            end
    end 

    private 

    def sentcharge_params 
        params.require(:sentcharge).permit(:charge_id, :user_id, :sent_user_id, :sentiment_score, :likes)
    end 
end
