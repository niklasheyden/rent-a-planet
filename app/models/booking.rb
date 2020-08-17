class Booking < ApplicationRecord
  belongs_to :planet_id
  belongs_to :user_id

  validates :checkin_date, presence: true
  validates :checkout_date, presence: true
end
