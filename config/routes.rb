Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create ]
  end
  resources :reviews, only: [:update]
end
