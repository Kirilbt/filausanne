Rails.application.routes.draw do
  devise_for :users
  scope "(:locale)", locale: /en|fr/ do
    root to: 'pages#home'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :eats
    resources :sleeps, only: [:index]
    resources :cares
  end
end
