class Booking < ApplicationRecord
  belongs_to :renter, class_name: "User"
  belongs_to :flat

  validates :status, inclusion: { in: %w[accepted pending declined] }

  validates :start_date, presence: true, comparison: { greater_than: Date.today }
  validates :end_date, presence: true, comparison: { greater_than: :start_date }
end
