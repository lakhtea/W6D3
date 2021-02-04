Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :artworks
    resources :comments
  end
  
  resources :artworks do
    resources :comments
  end

  resources :artwork_shares

  
  # get 'users', to: 'users#index'
  # get 'users/:id', to: 'users#show', as: 'user'
  # post 'users/:id', to: 'users#create'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'

end
