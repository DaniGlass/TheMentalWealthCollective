Rails.application.routes.draw do
  get 'mission/index'

  resources :blog, :classes, :guidelines, :only => [:index]

  root 'mission#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
