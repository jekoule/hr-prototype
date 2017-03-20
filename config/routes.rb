Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#new"

  resources :users, only: [:new, :create, :show, :edit, :update]

  get '/pages/*page' => 'pages#show'
end
