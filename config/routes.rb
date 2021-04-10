Rails.application.routes.draw do
  root to: 'girls#index'
  resources :girls, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    collection do
      get :top
    end
    member do
      get :rating
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
