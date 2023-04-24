Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :todos, only: [:index, :create, :delete, :update]
      resources :tags, only: [:create, :delete, :update]
    end
  end
end
