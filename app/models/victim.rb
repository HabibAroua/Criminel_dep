class Victim < ApplicationRecord
	belongs_to :the_case , :optional => true
end
