Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  get 'search', to: 'search#search'
  resources :municipes
  get "up" => "rails/health#show", as: :rails_health_check
  root "municipes#index"
end
