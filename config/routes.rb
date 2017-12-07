Rails.application.routes.draw do
  devise_for :users
  get 'mission/index'

  resources :blog, :classes, :guidelines, :only => [:index]
  resources :devise

  root 'mission#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
