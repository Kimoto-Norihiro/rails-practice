Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :todos, only: [:index, :create, :destroy, :update]
      resources :tags, only: [:create, :destroy, :update]
    end
  end
end
