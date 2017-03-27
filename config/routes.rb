Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#show", page: "home"

  get '/users/admo_org_chart' => 'users#admo_org_chart'
  get '/users/bpf_org_chart' => 'users#bpf_org_chart'
  get '/users/hr_org_chart' => 'users#hr_org_chart'
  get '/users/smf_org_chart' => 'users#smf_org_chart'

  resources :users, only: [:new, :create, :show, :edit, :update, :index]

  get '/pages/*page' => 'pages#show'

  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', as: :logout
end
