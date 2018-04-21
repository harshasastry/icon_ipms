class Location < ApplicationRecord
  belongs_to :city
  has_many :units
end
