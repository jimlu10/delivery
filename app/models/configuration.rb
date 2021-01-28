class Configuration < ApplicationRecord
  # -- Validations ----------------------------------------------------------
  belongs_to :courier, required: true
  belongs_to :create_processor, class_name: 'Processor', optional: true
  belongs_to :tracking_processor, class_name: 'Processor', optional: true
  # -- Relationships --------------------------------------------------------
end
