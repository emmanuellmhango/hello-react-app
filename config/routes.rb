Rails.application.routes.draw do
  resources :messeges
  root 'root#index'
end