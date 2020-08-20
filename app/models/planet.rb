class Planet < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
end
