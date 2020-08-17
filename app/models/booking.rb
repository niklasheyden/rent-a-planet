class Booking < ApplicationRecord
  belongs_to :planet_id
  belongs_to :user_id
end
