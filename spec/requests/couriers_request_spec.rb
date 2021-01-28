require 'rails_helper'

RSpec.describe "Couriers", type: :request do
  describe 'GET /couriers' do
    context 'When successful' do
      it 'Returns couriers' do
        create(:courier, :fedex)

        get '/couriers'

        expect(response).to have_http_status :ok
        expect(json_body).to include_json(couriers: UnorderedArray(
            { key: 'fedex',  name: 'Fedex Company', tracking_number_digits: '5..10' }
          )
        )
      end
    end
  end
end
