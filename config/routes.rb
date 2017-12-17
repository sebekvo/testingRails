Rails.application.routes.draw do

  namespace :admin do
    resources :student_courses
    resources :students
    resources :courses
    resources :teacher_courses
    resources :teachers
    resources :lessons
    resources :buildings
    resources :rooms
    resources :dashboard

    root to: 'dashboard#show'
  end

  resources :buildings_preview
  resources :rooms_preview

  get '/buildings_preview/:id/today' => 'buildings_preview#today', :as => :today_action

  root to: 'buildings_preview#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
