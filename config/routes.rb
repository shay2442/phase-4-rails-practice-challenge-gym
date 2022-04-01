Rails.application.routes.draw do
  resources :memberships, only: [:index, :show, :create, :destroy]
  resources :clients
  resources :gyms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
