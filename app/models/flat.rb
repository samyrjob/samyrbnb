class Flat < ApplicationRecord
  has_one_attached :photo
  belongs_to :owner, class_name: "User"
  has_many :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_town_and_name, against: [ :town, :name ], using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
