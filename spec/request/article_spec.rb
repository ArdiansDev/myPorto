require 'rails_helper'

describe 'index', type: :request do
    it 'returns ok' do
        get '/api/v1/articles'
        expect(response_data).not_to be_empty
        expect(response_data.size).to eq(2)
    end 
    
end