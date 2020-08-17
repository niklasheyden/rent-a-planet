class Review < ApplicationRecord
  belongs_to :user_id
  belongs_to :planet_id

  validates :content, presence: true
  validates :rating, presence: true,
    numericality: {
      only_integer: true,
      greater_than_or_equal_to: 0,
      less_than_or_equal_to: 5
    }
end
