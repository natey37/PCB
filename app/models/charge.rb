class Charge < ApplicationRecord
    has_many :favorites 
    has_many :users, through: :favorites 
    has_many :sent_charges 
    has_many :charge_tags 
    has_many :tags, through: :charge_tags 
end
