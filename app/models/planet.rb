class Planet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_many :users, through: :bookings

  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
end
