class TheCase < ApplicationRecord
	belongs_to :police_station , :optional => true
end
