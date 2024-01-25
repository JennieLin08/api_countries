Rails.application.routes.draw do
  namespace :api do
    get "/restcountries", to: "restcountries#home"
  end

  root 'countries#home'
  get '/countries/name', to: 'countries#name'
  get '/countries/language', to: 'countries#language'
  get '/countries/capital', to: 'countries#capital'

  get '/api', to: 'api/ctries#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
