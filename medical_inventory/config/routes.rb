Rails.application.routes.draw do
  root to: "static_pages#index"
  devise_for :users, controllers:{
    sessions: 'users/sessions'}

  resources :products
  resources :laboratories
  resources :stocks
  resources :filters

end
