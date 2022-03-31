Rails.application.routes.draw do
  devise_for :users
  # scope "(:locale)", locale: /en|fr/ do
    root to: 'pages#home'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :eats, only: [:index, :show]
    resources :sleeps, only: [:index, :show] do
      resources :requests, only: [:new, :create]
    end
    resources :cares, only: [:index, :show]
    resources :requests, only: [:index]
  # end
end
