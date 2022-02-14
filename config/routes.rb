Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'splash#index'

  resources :categories, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :records, only: [:new, :create, :update, :destroy]
  end
end
