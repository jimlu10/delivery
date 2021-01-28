require 'rails_helper'

RSpec.describe Courier, type: :model do


  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:key) }
    it { is_expected.to validate_presence_of(:tracking_number_digits) }

    it do
      create(:courier)
      is_expected.to validate_uniqueness_of(:key)
    end
  end

  describe 'relations' do
    it { is_expected.to have_many(:configurations) }
    it { is_expected.to belong_to(:configuration) }
  end

end
