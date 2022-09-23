class Booking < ApplicationRecord
    belongs_to :model 
    belongs_to :client 
end
