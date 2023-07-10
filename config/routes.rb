Rails.application.routes.draw do
  get'/messeges', to: 'messeges#index'
  root 'root#index'
end