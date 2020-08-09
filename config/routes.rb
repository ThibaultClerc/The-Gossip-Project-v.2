Rails.application.routes.draw do

  get '/', to: 'gossips#index'
  get '/welcome/:first_name', to: 'welcome#welcome_message'
  get '/team', to: 'team#presentation'
  get '/contact', to: 'contact#show_contacts'
  
  resources :gossips
  resources :users
  resources :cities, only: [:show]

  resources :gossips do
    resources :comments, only: [:new, :create, :index, :destroy]
  end
  post '/gossips/:id/comments', to: "comments#create", as:"gossips_comment_create"
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :likes, only: [:new, :create, :destroy]
  
  
end
