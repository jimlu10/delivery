class Configuration < ApplicationRecord
  belongs_to :courier, required: true
end
