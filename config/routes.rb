Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  get '/window', to: 'home#window'
  get '/history', to: 'home#history'
  get '/answerw', to: 'home#answerw'
  post '/answer', to: 'home#answer'
  get '/deadend', to: 'home#deadend'
  get '/dead', to: 'home#dead'
  get '/deadsign', to: 'home#deadsign'
  get '/index', to: 'home#index'
  get '/matoj', to: 'home#matoj'
  get '/despr', to: 'home#despr'
  post '/solve', to: 'home#solve'
  post '/solvesign', to: 'home#solvesign'

end
