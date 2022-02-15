Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'splash#index'

  resources :categories, only: [:index, :show, :new, :create, :update, :destroy] do
    resources :transactions, only: [:index, :new, :create]
    # resources :records, only: [:index, :new, :create]
  end
end
