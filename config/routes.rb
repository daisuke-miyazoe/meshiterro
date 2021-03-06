Rails.application.routes.draw do
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show] do
    resource :favorites, only: [:create, :destroy]
    resource :post_comments, only: [:create]
  end

  root 'post_images#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
