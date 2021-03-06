Rails.application.routes.draw do

namespace 'api' do 
  namespace 'v1' do 
    resources :postings 
    resources :articles
    resources :users, param: :_username
    post '/login', to: 'authentication#login'
    get '/*a', to: 'application#not_found'
  end
end 
end