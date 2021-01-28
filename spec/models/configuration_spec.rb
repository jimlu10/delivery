require 'rails_helper'

RSpec.describe Configuration, type: :model do
  describe 'validations' do
    it { is_expected.to belong_to(:courier).required  }
  end
end
