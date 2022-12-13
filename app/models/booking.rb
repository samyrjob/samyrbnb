class Booking < ApplicationRecord
  belongs_to :renter, class_name: "User"
  belongs_to :flat

  validates :status, inclusion: { in: %w[accepted pending declined] }
end
