class Courier < ApplicationRecord
  # -- Validations ----------------------------------------------------------
  validates :key, presence: true, uniqueness: { case_sensitive: true }
  validates :name, :tracking_number_digits, presence: true

  # -- Relationships --------------------------------------------------------
  belongs_to :configuration, optional: true
  has_many :configurations

  # -- Delegators -----------------------------------------------------------

  delegate :tracking_processor,  to: :configuration

  # -- AR  --------------------------------------------------------
end
