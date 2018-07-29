Rails.application.routes.draw do
  get 'home/index'

  # devise_for :users
  # get 'mission/index'

  resources :blog, :classes, :guidelines, :mission, :only => [:index]
  resources :devise, :subscriber

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
