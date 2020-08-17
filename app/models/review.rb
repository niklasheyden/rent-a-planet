class Review < ApplicationRecord
  belongs_to :user_id
  belongs_to :planet_id
end
