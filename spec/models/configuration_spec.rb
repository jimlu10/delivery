require 'rails_helper'

RSpec.describe Configuration, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:courier).required  }
    it { is_expected.to belong_to(:create_processor).class_name('Processor').optional }
    it { is_expected.to belong_to(:tracking_processor).class_name('Processor').optional }
  end
end
