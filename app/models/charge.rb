require 'Test'

class Charge < ApplicationRecord
    has_many :users, through: :favorites 
    has_many :sent_charges 
    # has_many :charge_tags 
    # has_many :tags, through: :charge_tags 
    include Test 
 
    def getScore(message)
        # puts "this is the message -->  #{message["message"]}"
        new_message = message["message"] 
        score(new_message)
    end 

    private 

    
end
