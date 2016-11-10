Rails.application.routes.draw do
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'

  root 'welcome#index'
  get '/dashboard' => 'tasks#index', as: 'dashboard'

  get 'signup' => 'users#new', as: 'signup'
  resources :users, only: [:create]
  resources :sessions, only: [:create]
  resources :tasks, except: [:index] do
    resources :parts
  end
  resources :parts, only: [:show, :update]

  # api routes
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show]
      resources :tasks, only: [:index, :show]
      resources :tasks do
        resources :parts, only: [:index, :show]
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
