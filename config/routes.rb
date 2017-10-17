Rails.application.routes.draw do
  resources :payments
  resources :advances
  resources :operative_plans
  devise_for :users
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
