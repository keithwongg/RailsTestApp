Rails.application.routes.draw do
  resources :friends
  root "friends#index"
  get "friends/new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
