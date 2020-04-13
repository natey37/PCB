class Sentcharge < ApplicationRecord
    belongs_to :user 
    belongs_to :charge
    has_many :chargetags
    has_many :favorites
end
