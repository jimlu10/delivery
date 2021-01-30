require 'rails_helper'

RSpec.describe Guide, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:tracking_number) }

    it do
      is_expected.to define_enum_for(:status).with_values(
        created: 'created',
        on_transit: 'on_transit',
        delivered: 'delivered',
        exception: 'exception'
      ).backed_by_column_of_type(:string)
    end
  end

  describe 'associations' do
    it { is_expected.to belong_to(:courier).required }
  end
end
