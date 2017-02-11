Rails.application.routes.draw do
  resources :users
  resources :schedule_line_items
  resources :detail_schedules
  root 'schedule#index', as: 'schedule_index'
  get 'schedule/index'

  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
