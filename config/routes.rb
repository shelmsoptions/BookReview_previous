Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    root 'books#index', as: :authenticated_root
    resources :books
  end
  resources :books
  
end
