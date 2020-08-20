class Planet < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings

  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
  against: [:name, :location],
  using: {
    tsearch: { prefix: true }
  }
end
