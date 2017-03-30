Rails.application.routes.draw do
  get 'badges/new'

  get 'badges/create'

  get 'badges/update'

  get 'badges/edit'

  get 'badges/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"

  get '/pages/*page' => 'pages#show'

  get '/users/org_charts' => 'users#org_charts'
  get '/users/admo_org_chart' => 'users#admo_org_chart'
  get '/users/bpf_org_chart' => 'users#bpf_org_chart'
  get '/users/hr_org_chart' => 'users#hr_org_chart'
  get '/users/smf_org_chart' => 'users#smf_org_chart'

  resources :users, only: [:new, :create, :show, :edit, :update, :index]

  resources :users do
    resources :badges, only: [:new, :create, :update, :edit, :destroy]
  end

  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', as: :logout
end
