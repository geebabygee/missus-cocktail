Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :cocktails do
    resources :doses, only: [ :create, :new]
    resources :reviews, only: [ :create, :new]
  end
    resources :doses, only: [:destroy] #ASK WHYYYYYY
    # resources :reviews, only: [:destroy]
end


