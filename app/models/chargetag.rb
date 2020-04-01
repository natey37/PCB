class Chargetag < ApplicationRecord
    belongs_to :tag
    belongs_to :charge
end
