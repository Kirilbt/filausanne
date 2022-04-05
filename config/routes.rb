Rails.application.routes.draw do
  devise_for :users
  scope "(:locale)", locale: /en|fr|pt/ do
    root to: 'pages#home'
    # resources :services
    resources :eats, only: [:index, :show, :edit, :update]
    resources :sleeps, only: [:index, :show, :edit, :update] do
      resources :requests, only: [:new, :create]
    end
    resources :cares, only: [:index, :show, :edit, :update]
    resources :requests, only: [:index, :edit, :update]
    get 'urgent', to: 'pages#urgent'
  end
  # get 'urgent', action: :show, controller: 'services'
end
