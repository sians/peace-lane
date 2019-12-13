Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :ingredients, only: [:index, :show]
  resources :recipes, only: [:index, :show]

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :ingredients
    resources :recipes
  end

end
