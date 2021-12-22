require 'rails_helper'

RSpec.describe Article, type: :request do
  describe 'index' do
    it 'returns ok' do
        get '/api/v1/articles'
        expect(response).to have_http_status(:ok)
   
    end 
    describe 'index' do
      it 'returns ok' do
          get '/api/v1/articles/1'
          expect(response).to have_http_status(:ok)
        end 
      end 
  end
end
