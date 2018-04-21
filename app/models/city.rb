class City < ApplicationRecord
	belongs_to :organisation
	has_many :locations
end
