class Configuration < ApplicationRecord
  # -- Validations ----------------------------------------------------------
  belongs_to :courier, required: true
  belongs_to :create_processor, class_name: 'Processor', optional: true # TODO Implement Guide Creation
  belongs_to :tracking_processor, class_name: 'Processor', optional: true

  # -- Relationships --------------------------------------------------------

  # -- Delegators -----------------------------------------------------------

  # -- AR  --------------------------------------------------------
end
