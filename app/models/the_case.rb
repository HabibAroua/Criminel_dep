class TheCase < ApplicationRecord
	belongs_to :police_station , :optional => true
	has_many :victims
	has_many :waitnesses
	has_many :proofs
	has_many :culprits
end
