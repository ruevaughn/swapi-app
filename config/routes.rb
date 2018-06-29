Rails.application.routes.draw do
  root to: 'pages#home'

  get 'pages/home', as: :home_page
  get 'pages/statistics', as: :statistics_page

  resources :films, only: [:index, :show, :new, :create]
  resources :people, only: [:index, :show, :new, :create]
  resources :planets, only: [:index, :show, :new, :create]
  resources :species, only: [:index, :show, :new, :create]
  resources :starships, only: [:index, :show, :new, :create]
  resources :vehicles, only: [:index, :show, :new, :create]
end
