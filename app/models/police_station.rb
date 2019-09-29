class PoliceStation < ApplicationRecord
	belongs_to :governorate
	has_many :the_cases
end