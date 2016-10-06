Rails.application.routes.draw do
  get 'carts/show'

  devise_for :users
  resources :produtos

  root 'produtos#index'

  resource :cart, only: [:show] do
    put 'add/:produto_id', to: 'carts#add', as: :add_to
    put 'remove/:produto_id', to: 'carts#remove', as: :remove_from
  end
end
