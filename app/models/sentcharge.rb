class Sentcharge < ApplicationRecord
    belongs_to :user 
    belongs_to :charge
    has_many :chargetags
end
