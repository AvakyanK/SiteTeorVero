Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  get '/window', to: 'home#window'
  get '/solve', to: 'home#solve'
  get '/index', to: 'home#index'
  get '/matoj', to: 'home#matoj'
  get '/despr', to: 'home#despr'
  get '/kvadr', to: 'home#kvadr'
  get '/func', to: 'home#func'
end
