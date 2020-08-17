class User < ApplicationRecord
  has_many :bookings
  has_many :planets
  has_many :planets, through: :bookings
  has_many :reviews
end
