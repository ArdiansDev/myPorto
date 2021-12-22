require 'rails_helper'

RSpec.describe "Authentications", type: :request do
  describe "post /index" do
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
  describe "Get data" do 
    it 'returns ok' do
      header = {
        Authorization: "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NDAyNDIyMDN9.1fwL7SseS3NVVmbDZSskUl_X88Q-K6ZbxFMxceqcpPg"
      }
      get "/api/v1/postings", headers: header 
      expect(response).to have_http_status(:ok)
      
    end
  end
end
