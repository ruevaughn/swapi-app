Rails.application.routes.draw do
  root to: 'pages#home'

  get 'pages/home'
  get 'starships/index'
  get 'starships/show'
  get 'vehicles/index'
  get 'vehicles/show'
  get 'species/index'
  get 'species/show'
  get 'planets/index'
  get 'planets/show'
  get 'films/index'
  get 'films/show'
  get 'people/index'
  get 'people/show'
end
