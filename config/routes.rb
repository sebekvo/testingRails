Rails.application.routes.draw do

  resources :teachers
  resources :lessons
  resources :buildings
  resources :rooms

  root to: 'buildings#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
