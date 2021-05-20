class Bro < ApplicationRecord
  has_many :scooter_bros
  has_many :scooters, through: :scooter_bros

  validates :name, presence: true # Have to send a name
end
