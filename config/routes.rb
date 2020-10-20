Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/wikiarticles', to: 'wikis#wikiarticles'
      resources :folders, only: [:create, :show, :index, :update, :destroy]
      resources :wikis, only: [:create, :show, :index, :destroy]
      resources :bookmarks, only: [:create, :show, :index, :destroy, :update]
    end
  end

end
