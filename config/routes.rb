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
  end

  root to: 'buildings#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
