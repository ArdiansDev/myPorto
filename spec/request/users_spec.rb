require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    it 'returns ok' do
      params = {
        email: 'admin@admin.com',
        password: '123456'
      }
      post "/api/v1/login", params: params
      parsed_body = JSON.parse(response.body)
      expect(response).to have_http_status(:ok)
     
      
    end
  end
end
