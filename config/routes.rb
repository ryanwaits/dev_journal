Rails.application.routes.draw do
  root 'welcome#index'
  get '/dashboard' => 'tasks#index', as: 'dashboard'
  resources :tasks, except: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
