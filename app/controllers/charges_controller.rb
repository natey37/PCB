class ChargesController < ApplicationController

    def index
        charges = Charge.all 
        render json: charges.to_json
    end

    def score 
        charge = Charge.new(score_params)
        score = charge.getScore(score_params)
        if charge.save
            render json: {status: 'Charge created successfully', score: score, charge: charge}, status: :created
        else
            render json: { errors: charge.errors.full_messages }, status: :bad_request
        end
    end 

    private 

    def score_params 
        params.require(:charge).permit(:message)
    end 
end
