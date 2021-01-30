class Guide < ApplicationRecord
  # -- Validations ----------------------------------------------------------
  validates :tracking_number, presence: true

  # -- Relationships --------------------------------------------------------
  belongs_to :courier, required: true

  # -- AR  --------------------------------------------------------

  enum status: {
    created: 'created',
    on_transit: 'on_transit',
    delivered: 'delivered',
    exception: 'exception'
  }
end
