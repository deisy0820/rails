Rails.application.routes.draw do
  resources :bills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "bills#index"
end
