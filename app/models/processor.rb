class Processor < ApplicationRecord
  # -- Validations ----------------------------------------------------------
  validates :key, presence: true, uniqueness: { case_sensitive: true }
  validates :name, presence: true

  # -- Relationships --------------------------------------------------------

  # -- Delegators -----------------------------------------------------------

  # -- AR  --------------------------------------------------------

  def create!
    raise NotImplemetedError, 'Not implemented'
  end

  def tracking!
    raise NotImplemetedError, 'Not implemented'
  end
end
