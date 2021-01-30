require 'rails_helper'

RSpec.describe "Guides", type: :request do
  let(:tracking_params) do
    {
      guide: {
        tracking_number: '1234567890',
        courier: 'fedex'
      }
    }
  end

  before(:each) do
    create(:courier, :fedex)
  end

  describe 'POST /guides/track' do

    context 'When successful' do
      it 'Returns Guide status' do
        post '/guides/track', params: tracking_params

        expect(response).to have_http_status :ok
        expect(json_body).to include_json(
          tracking_number: tracking_params[:guide][:tracking_number],
          status: 'created',
          courier: 'fedex'
        )
      end
    end

    context 'When unsuccessful' do
      it 'Returns Courier not found' do
        tracking_params[:guide][:courier] = 'not_implemented'

        post '/guides/track', params: tracking_params

        expect(response).to have_http_status :not_found
        expect(json_body).to include_json(message: "Couldn't find courier")
      end
    end
  end
end
