class User < ApplicationRecord
    has_many :sent_charges 
    has_many :favorites
    has_many :charges, through: :favorites
end
