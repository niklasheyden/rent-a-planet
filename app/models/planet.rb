class Planet < ApplicationRecord
  has_many :bookings
  belongs_to :users
  has_many :reviews
end
