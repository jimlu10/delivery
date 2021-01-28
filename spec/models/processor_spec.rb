require 'rails_helper'

RSpec.describe Processor, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:key) }
  end

  it do
    create(:processor)
    is_expected.to validate_uniqueness_of(:key)
  end
end
