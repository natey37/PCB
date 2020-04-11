class ChargetagsController < ApplicationController

    def index 
        chargetags = Chargetag.all 
        render json: chargetags
    end 

    def create 
        puts params 
        # chargetag = Chargetag.new(charge_id: params[:charge_id], tag_id: params[:tag_id], tagtype: params[:tagtype])
        chargetag = Chargetag.new(chargetag_params)
        puts chargetag_params
        puts chargetag
            if chargetag.save
                puts chargetag
                render json: {status: 'chargetag created successfully', chargetag: chargetag}, status: :created
            else
                render json: { errors: chargetag.errors.full_messages }, status: :bad_request
            end
    end 

    private 

    def chargetag_params 
        params.require(:chargetag).permit(:sentcharge_id, :tag_id, :tagtype)
    end 
end
