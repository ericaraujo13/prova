Rails.application.routes.draw do
  get 'search', to: 'search#search'
  resources :municipes
  get "up" => "rails/health#show", as: :rails_health_check
  root "municipes#index"
end
