class Courier < ApplicationRecord
  # -- Validations ----------------------------------------------------------
  validates :key, presence: true, uniqueness: { case_sensitive: true }
  validates :name, :tracking_number_digits, presence: true

  # -- Relationships --------------------------------------------------------
  has_many :configurations
end
