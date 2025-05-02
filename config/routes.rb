Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }

  namespace :users do
    resources :meal_plan_subscribes, only: %i[create edit update]
  end
  root 'home#top'
end
