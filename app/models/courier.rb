class Courier < ApplicationRecord
  # -- Validations ----------------------------------------------------------
  validates :key, presence: true, uniqueness: { case_sensitive: true }
  validates :name, :tracking_number_digits, presence: true

  # -- Relationships --------------------------------------------------------
  belongs_to :configuration
  has_many :configurations
end
