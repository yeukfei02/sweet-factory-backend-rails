# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'main#index'

  get '/api', to: 'main#index'

  scope '/api' do
    post '/users/signup', to: 'users#signup'
    post '/users/login', to: 'users#login'
    get '/users', to: 'users#get_users'
    get '/users/:id', to: 'users#get_user_by_id'

    post '/zones', to: 'zones#create_zones'
    get '/zones', to: 'zones#get_zones'
    get '/zones/:id', to: 'zones#get_zone_by_id'

    post '/cities', to: 'cities#create_cities'
    get '/cities', to: 'cities#get_cities'
    get '/cities/:id', to: 'cities#get_city_by_id'

    post '/machines', to: 'machines#create_machines'
    get '/machines', to: 'machines#get_machines'
    get '/machines/:id', to: 'machines#get_machine_by_id'

    post '/products', to: 'products#create_products'
    get '/products', to: 'products#get_products'
    get '/products/:id', to: 'products#get_product_by_id'
  end
end
