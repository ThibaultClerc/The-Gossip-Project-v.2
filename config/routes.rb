Rails.application.routes.draw do
  # get 'profile/user_description'
  # get 'gossip_page/show_gossip'
  get '/', to: 'gossips#index'
  get '/welcome/:first_name', to: 'welcome#welcome_message'
  get '/team', to: 'team#presentation'
  get '/contact', to: 'contact#show_contacts'
  # get '/:id', to: 'gossip_page#show_gossip', as:'gossip'
  # get '/profile/:name', to: 'profile#user_description', as:'profile'
  resources :gossips
  resources :users
  resources :cities, only: [:show]
  resources :gossips do
    resources :comments, only: [:new, :create, :index, :destroy]
  end
  post '/gossips/:id/comments', to: "comments#create", as:"gossips_comment_create"
  resources :sessions, only: [:new, :create, :destroy]
  
end
