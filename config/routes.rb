Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "orders#index"
  get "/orders/filter/number/:id", to: "orders#controlNumberFilter"
  get "/orders/filter/state/:state", to: "orders#statusFilter"

#  get "/orders", to: "orders#index" #getAll
#  get "/orders/:id", to: "orders#show" #getById
  resources :orders
end
