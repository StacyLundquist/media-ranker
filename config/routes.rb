Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'works#home'

  resources :works do
    resources :votes, only: [:create, :destroy]
  end

  resources :users, only: [:index, :show]
end
