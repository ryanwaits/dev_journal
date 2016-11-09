Rails.application.routes.draw do
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'

  root 'welcome#index'
  get '/dashboard' => 'tasks#index', as: 'dashboard'

  resources :users, only: [:new, :show, :create]
  resources :tasks, except: [:index] do
    resources :parts
  end
  resources :parts, only: [:show, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
