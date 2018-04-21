class Tower < ApplicationRecord
  belongs_to :unit
  has_many :floors
end
