Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :produkte, only: [:index, :show] do
    resources :cards, only: [:index]
  end
  root to: "pages#home"
  #get "/produkte", to:"pages#produkte", as: :produkte
  get "/sonnenCommunity", to:"pages#sonnenComunity", as: :sonnenComunity
  get "/wissen", to:"pages#wissen", as: :wissen
  get "/kontact", to: "pages#kontact", as: :kontact
  get "/stromspeicher", to: "pages#stromspeicher", as: :stromspeicher
end
