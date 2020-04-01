class Sentcharge < ApplicationRecord
    belongs_to :user 
    belongs_to :charge
end
