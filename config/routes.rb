Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rides do
    resources :ride_requests
  end
  resources :users
end
