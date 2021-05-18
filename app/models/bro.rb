class Bro < ApplicationRecord
  has_many :scooter_bros
  has_many :scooters, through: :scooter_bros
end
