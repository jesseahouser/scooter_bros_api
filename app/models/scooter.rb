class Scooter < ApplicationRecord
  has_many :scooter_bros
  has_many :bros, through: :scooter_bros
end
