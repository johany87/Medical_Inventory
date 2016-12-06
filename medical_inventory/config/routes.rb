Rails.application.routes.draw do

  root to: "static_pages#index"
  devise_for :users, controllers:{
    sessions: 'users/sessions'}

  resources :products do
    member do
      get :just_created
    end
  end
  resources :laboratories
  resources :stocks
  scope :filters, controller: :filters do
    get "/" =>  'filters#index', as: :filters
  end

end
