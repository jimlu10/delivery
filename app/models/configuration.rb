class Configuration < ApplicationRecord
  # -- Validations ----------------------------------------------------------
  belongs_to :courier, required: true

  # -- Relationships --------------------------------------------------------
end
