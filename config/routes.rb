Rails.application.routes.draw do
  # get '/bros', to: 'bros#index'
  # resources :bros, only: [:index, :show, :create, :update, :destroy] #same as line 4
  # resources :bros, except: [:destroy]
  resources :bros
  get 'bros_over_age/', to: 'bros#over_age'
end
