Rails.application.routes.draw do
  root 'products#index'

  resources :products, only: [:index, :show] do
    resources :offers, only: [:new, :create] do
      post 'reject', to: 'offers#reject'
    end
  end
  
end
