Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  put 'users/:id', to: 'users#update'
  get 'users/:id/edit', to: 'users#edit'

  put 'microposts/:id', to: 'microposts#update'
  get 'microposts/:id/edit', to: 'microposts#edit'

  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy, :img, :explain] do
    member do
      get :followings
      get :followers
      get :likes
    end
  end



  resources :microposts, only: [:create, :destroy, :edit, :update]
  resources :relationships, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
end