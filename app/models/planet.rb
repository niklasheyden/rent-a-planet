class Planet < ApplicationRecord
  has_many :bookings
  belongs_to :users
  has_many :reviews
  has_many :users, through: :bookings

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :price, presence: true
end
