class Courier < ApplicationRecord
  validates :key, presence: true, uniqueness: { case_sensitive: true }
  validates :name, :tracking_number_digits, presence: true
end
